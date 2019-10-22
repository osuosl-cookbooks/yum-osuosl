# yum-osuosl-cookbook

Installs the [OSUOSL Yum Repo](http://ftp.osuosl.org/pub/osl/repos/yum).

## Usage

### yum-osuosl::default

Include `yum-osuosl` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[yum-osuosl::default]"
  ]
}
```

## Contributing

1. Fork the repository on Github
2. Create a named feature branch (i.e. `add-new-recipe`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request

## License and Authors

Author:: Oregon State University (<chef@osuosl.org>)
