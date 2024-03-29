variable "iac-var-template" {
  description = ""
  type        = string
  default     = ""
}

variable "iac-eks-worknodes-group-name" {
  description = ""
  type        = string
  default     = "iac_eks_worknodes_group"
}

variable "iac-eks-cluster-name" {
  description = ""
  type        = string
  default     = "iac_eks_cluster"
}


variable "iac-gw-name" {
  description = "Specify the internet gateway of vpc"
  type        = string
  default     = "iac_eks_gw"
}

variable "iac-eks-master-sg-name" {
  description = "sg for eks master"
  type        = string
  default     = "iac_sg_eks_master"
}

variable "iac-eks-worknodes-sg-name" {
  description = "sg for eks work nodes"
  type        = string
  default     = "iac_sg_eks_worknodes"

}

variable "iac-vpc-cidr-block" {
  description = ""
  type        = string
  default     = "192.168.0.0/16"
}

variable "iac-vpc-name" {
  description = ""
  type        = string
  default     = "iac_eks_vpc"
}

variable "iac-config-of-subnet-01" {
  type = object({ name = string, availability_zone = string, cidr_block = string })
  default = {
    name              = "iac-eks-vpc-subnet01"
    availability_zone = "us-east-1a"
    cidr_block        = "192.168.101.0/24"
  }
}

variable "iac-config-of-subnet-02" {
  type = object({ name = string, availability_zone = string, cidr_block = string })
  default = {
    name              = "iac-eks-vpc-subnet02"
    availability_zone = "us-east-1b"
    cidr_block        = "192.168.102.0/24"
  }
}

variable "iac-config-of-subnet-03" {
  type = object({ name = string, availability_zone = string, cidr_block = string })
  default = {
    name              = "iac-eks-vpc-subnet03"
    availability_zone = "us-east-1c"
    cidr_block        = "192.168.103.0/24"
  }
}

variable "iac-config-of-subnet-04" {
  type = object({ name = string, availability_zone = string, cidr_block = string, smger_ip = string })
  default = {
    name              = "iac-eks-vpc-subnet04"
    availability_zone = "us-east-1d"
    cidr_block        = "192.168.104.0/24"
    smger_ip          = "192.168.104.104"
  }
}


# --- object type --- #

# ---
variable "iac-redis-cluster-id" {
  description = "Specify the id of redis cluster"
  type        = string
  default     = "iac-redis-eks"
}

# the zones must belong to the specified vpc
#
variable "iac-redis-cluster-zones" {
  description = "Specify the availablle zones for redis cluster"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "iac-redis-version" {
  description = "Specify version of redis"
  type        = string
  default     = "default.redis5.0"
}

variable "iac-redis-cluster-node-type" {
  description = "Specify node instance type of redis cluster nodes"
  type        = string
  default     = "cache.t2.micro"
}

variable "iac-redis-subnet-group-name" {
  description = "Specify the name of redis cluster subnet group"
  type        = string
  default     = "iac-redis-cluster-subnets"
}

# ---



# ---
variable "iac-session-manager-name" {
  description = ""
  type        = string
  default     = "iac-eks-session-manager"
}

variable "iac-session-manager-role-name" {
  description = "Specify the session manager role name"
  type        = string
  default     = "iac-session-manager-role"
}

variable "iac-eks-master-role-name" {
  description = "Specify the eks role name"
  type        = string
  default     = "iac-eks-role"
}

variable "iac-eks-worknodes-role-name" {
  description = "Specify the eks worknodes role name"
  type        = string
  default     = "iac-eks-worknodes-role"
}

# ---


# ---
variable "iac-ecr-repository-name-list" {
  description = "Define repository names, the size of list must be the same as the specified amount"
  type        = list(string)
  default     = ["iac-ocr-rep-nginx", "iac-ocr-rep-flask", "iac-ocr-rep-ocr", "iac-ocr-rep-fluentd"]
}
# ---

# ---
variable "iac-s3-bucket-name" {
  description = "Define a s3 bucket name list "
  type        = list(string)
  default     = ["iac-aws-setting", "iac-docker-images", "iac-k8s"]
}
# ---


# ---
variable "iac-eks-worknodes-profile" {
  description = ""
  type        = string
  default     = "iac_eks_worknodes_profile"
}
# ---

