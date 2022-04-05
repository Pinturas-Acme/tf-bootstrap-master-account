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
output "policy_staging_ou_id" {
  value = aws_organizations_organizational_unit.policy_staging.id
}

# Suspended OU
output "suspended_ou_id" {
  value = aws_organizations_organizational_unit.suspended.id
}

# Workloads OU
output "workloads_ou_id" {
  value = aws_organizations_organizational_unit.workloads.id
}

output "workloads_sdlc_ou_id" {
  value = aws_organizations_organizational_unit.workloads_sdlc.id
}

output "workload_prod_ou_id" {
  value = aws_organizations_organizational_unit.workloads_prod.id
}

# Deployments OU
output "deployment_ou_id" {
  value = aws_organizations_organizational_unit.deployments.id
}

output "deployment_sdlc_ou_id" {
  value = aws_organizations_organizational_unit.deployments_sdlc.id
}

output "deployment_prod_ou_id" {
  value = aws_organizations_organizational_unit.deployments_prod.id
}