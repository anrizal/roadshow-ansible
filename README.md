# roadshow-ansible
Some Ansible work to provision the roadshow environment on demand

## Prereqs
You will need your AWS credentials:

```
export AWS_ACCESS_KEY_ID='AK123'
export AWS_SECRET_ACCESS_KEY='abc123'
```

You will also need your Red Hat customer portal credentials for use with
subscription manager:

```
export CP_USER='AK124'
export CP_PASSWORD='abc123'
```

Putting these in a file and `source`ing them is probably best.
