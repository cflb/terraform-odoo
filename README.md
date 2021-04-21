# terraform-odoo

## Para executar:

### TerraForm Init
```
~# terraform init
```

### TerraForm Plan (save output file)
```
~# terraform plan \
    -var-file="terraform.tfvars" \
    -out output
```

### TerraForm Apply
```
~# terraform apply output
```

### TerraForm Destroy
```
~# terraform destroy \
    -var-file="terraform.tfvars" \
```