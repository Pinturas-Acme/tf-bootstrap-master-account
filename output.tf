output "org_id" {
  value = aws_organizations_organization.org.id
}

# Security OU
output "security_ou_id" {
  value = aws_organizations_organizational_unit.security.id
}

# Infrastructure OU
output "infrastructure_ou_id" {
  value = aws_organizations_organizational_unit.infrastructure.id
}

output "shared_ou_id" {
  value = aws_organizations_organizational_unit.shared.id
}