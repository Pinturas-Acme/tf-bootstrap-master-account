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