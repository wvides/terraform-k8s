package tests

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/random"
	"github.com/gruntwork-io/terratest/modules/terraform"
)

func TestAWS(t *testing.T) {
	uniqueID := random.UniqueId()
	terraformOptions := &terraform.Options{
		TerraformDir: "../",
		Vars:         map[string]interface{}{},
	}
	defer terraform.Destroy(t, terraformOptions)
	terraform.InitAndApply(t, terraformOptions)
}
