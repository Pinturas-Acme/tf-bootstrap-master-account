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

# Sandbox OU
output "sandbox_ou_id" {
  value = aws_organizations_organizational_unit.sandbox.id
}

# Policy Staging OU
output "policy_staging_ou" {
  value = aws_organizations_organizational_unit.policy_staging.id
}