resource "aws_organizations_organization" "org" {
  enabled_policy_types = ["SERVICE_CONTROL_POLICY"]
  feature_set = "ALL"
}

# Security OU
resource "aws_organizations_organizational_unit" "security" {
  name      = "Security"
  parent_id = aws_organizations_organization.org.roots[0].id
}

# Infrastructure OU
resource "aws_organizations_organizational_unit" "infrastructure" {
  name      = "Infrastructure"
  parent_id = aws_organizations_organization.org.roots[0].id
}

resource "aws_organizations_organizational_unit" "shared" {
  name      = "Shared"
  parent_id = aws_organizations_organizational_unit.infrastructure.id
}

# Sandbox OU
resource "aws_organizations_organizational_unit" "sandbox" {
  name      = "Sanbox"
  parent_id = aws_organizations_organization.org.roots[0].id
}

# Policy Staging OU
resource "aws_organizations_organizational_unit" "policy_staging" {
  name      = "Policy Staging"
  parent_id = aws_organizations_organization.org.roots[0].id
}

# Suspended OU
resource "aws_organizations_organizational_unit" "suspended" {
  name      = "Suspended"
  parent_id = aws_organizations_organization.org.roots[0].id
}

# Workloads OU
resource "aws_organizations_organizational_unit" "workloads" {
  name      = "Workloads"
  parent_id = aws_organizations_organization.org.roots[0].id
}

resource "aws_organizations_organizational_unit" "workloads_sdlc" {
  name      = "SDLC"
  parent_id = aws_organizations_organizational_unit.workloads.id
}

resource "aws_organizations_organizational_unit" "workloads_prod" {
  name      = "Prod"
  parent_id = aws_organizations_organizational_unit.workloads.id
}

# Deployments OU
resource "aws_organizations_organizational_unit" "deployments" {
  name      = "Deployments"
  parent_id = aws_organizations_organization.org.roots[0].id
}

resource "aws_organizations_organizational_unit" "deployments_sdlc" {
  name      = "SDLC"
  parent_id = aws_organizations_organizational_unit.deployments.id
}

resource "aws_organizations_organizational_unit" "deployments_prod" {
  name      = "Prod"
  parent_id = aws_organizations_organizational_unit.deployments.id
}