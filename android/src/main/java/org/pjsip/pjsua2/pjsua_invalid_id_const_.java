/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.12
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

package org.pjsip.pjsua2;

public final class pjsua_invalid_id_const_ {
  public final static pjsua_invalid_id_const_ PJSUA_INVALID_ID = new pjsua_invalid_id_const_("PJSUA_INVALID_ID", pjsua2JNI.PJSUA_INVALID_ID_get());

  public final int swigValue() {
    return swigValue;
  }

  public String toString() {
    return swigName;
  }

  public static pjsua_invalid_id_const_ swigToEnum(int swigValue) {
    if (swigValue < swigValues.length && swigValue >= 0 && swigValues[swigValue].swigValue == swigValue)
      return swigValues[swigValue];
    for (int i = 0; i < swigValues.length; i++)
      if (swigValues[i].swigValue == swigValue)
        return swigValues[i];
    throw new IllegalArgumentException("No enum " + pjsua_invalid_id_const_.class + " with value " + swigValue);
  }

  private pjsua_invalid_id_const_(String swigName) {
    this.swigName = swigName;
    this.swigValue = swigNext++;
  }

  private pjsua_invalid_id_const_(String swigName, int swigValue) {
    this.swigName = swigName;
    this.swigValue = swigValue;
    swigNext = swigValue+1;
  }

  private pjsua_invalid_id_const_(String swigName, pjsua_invalid_id_const_ swigEnum) {
    this.swigName = swigName;
    this.swigValue = swigEnum.swigValue;
    swigNext = this.swigValue+1;
  }

  private static pjsua_invalid_id_const_[] swigValues = { PJSUA_INVALID_ID };
  private static int swigNext = 0;
  private final int swigValue;
  private final String swigName;
}

