output "vpc_id" {
  value = aws_vpc.main.id
}

output "rds_endpoint" {
  value = aws_db_instance.laravel_db.endpoint
}

output "ecr_repository_url" {
  value = aws_ecr_repository.laravel_repo.repository_url
}

output "eks_cluster_name" {
  value = module.eks.cluster_name
}
