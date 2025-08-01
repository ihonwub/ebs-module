# Promise Template

This Promise was generated with:

```
kratix init tf-module-promise ebs --module-source https://github.com/ihonwub/ebs-module.git --module-version v0.0.1 --group platformx.io --kind EBS
```

## Updating API properties

To update the Promise API, you can use the `kratix update api` command:

```
kratix update api --property name:string --property region- --kind EBS
```

## Updating Workflows

To add workflow containers, you can use the `kratix add container` command:

```
kratix add container resource/configure/pipeline0 --image syntasso/postgres-resource:v1.0.0
```

## Updating Dependencies

TBD
