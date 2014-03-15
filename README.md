OpenRTM-aist-python Cookbook
============================
This cookbook will install OpenRTM-aist a middleware framework for
robotics.

Requirements
------------

- `build-essential` - OpenRTM-aist-python requires c++ compiler.
- `python` - OpenRTM-aist-python requires python.
- `omniorb` - OpenRTM-aist-python requires omniORB.
- `openrtm-aist` - OpenRTM-aist-python requires OpenRTM-aist.

Attributes
----------

No attributes yet.

Usage
-----

Just include `openrtm-aist-python` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[openrtm-aist-python]"
  ]
}
```

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------

Apache 2.0

Authors: Yosuke Matsusaka
