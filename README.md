# Bower extension for Chassis
The Bower extension automatically sets up your Chassis instance to be able to use bower inside your Chassis box.

## Activation
Ensure you have a Chassis instance set up locally already.

```
# In your Chassis dir:
git clone --recursive https://github.com/Chassis/Bower.git extensions/bower

# Reprovision
cd ..
vagrant provision
```

Alternatively you can add the extension to one of your yaml config files. e.g.
```
# Extensions
#
# Install a list of extensions automatically
extensions:
    - chassis/bower
# Reprovision
vagrant provision
```

Bower has now been installed inside your Chassis box.
