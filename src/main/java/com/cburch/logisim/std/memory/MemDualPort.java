package com.cburch.logisim.std.memory;

import com.cburch.logisim.data.Attribute;
import com.cburch.logisim.data.Attributes;
import com.cburch.logisim.data.BitWidth;
import com.cburch.logisim.fpga.hdlgenerator.HdlGeneratorFactory;
import com.cburch.logisim.instance.Instance;
import com.cburch.logisim.tools.key.BitWidthConfigurator;
import com.cburch.logisim.tools.key.JoinedConfigurator;
import com.cburch.logisim.util.StringGetter;

import static com.cburch.logisim.std.Strings.S;

public abstract class MemDualPort extends Mem {

//  static class MemDualPortListner extends MemListener{
//
//    MemDualPortListner(Instance instance) {
//      super(instance);
//    }
//  }
  public static final Attribute<BitWidth> ADDR_B_ATTR =
      Attributes.forBitWidth("addrBWidth", S.getter("ramAddrWidthAttr"), 2, 24);

  public static final Attribute<BitWidth> DATA_B_ATTR =
      Attributes.forBitWidth("dataBWidth", S.getter("ramDataWidthAttr"));
  MemDualPort(
      String name,
      StringGetter desc,
      int extraPorts,
      HdlGeneratorFactory generator,
      boolean needsLabel) {
    super(name, desc, extraPorts, generator, needsLabel);
    setKeyConfigurator(
        JoinedConfigurator.create(
            JoinedConfigurator.create(
                new BitWidthConfigurator(ADDR_ATTR, 2, 24, 0), new BitWidthConfigurator(DATA_ATTR)),
            JoinedConfigurator.create(
                new BitWidthConfigurator(ADDR_B_ATTR, 2, 24, 0), new BitWidthConfigurator(DATA_B_ATTR))
        )
    );
  }



}
