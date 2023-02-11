#!/bin/bash

marco {
  pwd > /tmp/marco.txt
}

polo {
  cd $(cat /tmp/marco.txt)
}

