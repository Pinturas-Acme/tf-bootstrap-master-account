output "org_id" {
  value = aws_organizations_organization.org.id
}

output "security_ou_id" {
  value = aws_organizations_organizational_unit.security.id
}