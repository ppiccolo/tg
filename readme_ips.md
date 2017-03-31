### Start registration

```python
phone = raw_input("Insert phone number")
ret = sender.execute_function("raw", "phone_register {0}".format(phone))
print(ret)


code = raw_input("Insert registration code")
ret = sender.execute_function("raw", "send_code {0}".format(code))
print(ret)
```

### Check the status
```python
from pytg.sender import Sender
import time

sender = Sender(host="localhost", port=8989)

while True:
    time.sleep(1)
    ret = sender.execute_function("raw", "get_registration_status")
    print(ret)
```

1. REG_COMPLETE = 0;
1. REG_WAITING_FOR_CODE = 1;
1. REG_WAITING_FOR_PHONE = 2;
1. REG_ERR_INVALID_PHONE = 3;
1. REG_ERR_INVALID_CODE = 4;