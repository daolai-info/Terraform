resource "aws_eks_node_group" "iac_eks_worknodes" {
  cluster_name    = aws_eks_cluster.iac_eks_cluster.name
  node_group_name = "iac_eks_worknodes"
  node_role_arn   = aws_iam_role.iac_role_eks_worknodes.arn
  subnet_ids      = aws_subnet.iac_eks_cluster_subnets[*].id
  instance_types  = ["t1.micro"]

  scaling_config {
    desired_size = 1
    max_size     = 2
    min_size     = 1
  }

  # Ensure that IAM Role permissions are created before and deleted after EKS Node Group handling.
  # Otherwise, EKS will not be able to properly delete EC2 Instances and Elastic Network Interfaces.
  depends_on = [
    aws_iam_role_policy_attachment.iac-eks-worknodes-AmazonEKSWorkerNodePolicy,
    aws_iam_role_policy_attachment.iac-eks-worknodes-AmazonEKS_CNI_Policy,
    aws_iam_role_policy_attachment.iac-eks-worknodes-AmazonEC2ContainerRegistryReadOnly,
  ]
}
