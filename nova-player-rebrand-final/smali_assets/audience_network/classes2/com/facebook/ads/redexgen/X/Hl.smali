.class public abstract Lcom/facebook/ads/redexgen/X/Hl;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static A00(II)I
    .locals 2

    .line 39943
    const/4 v1, 0x0

    sparse-switch p0, :sswitch_data_0

    .line 39944
    return v1

    .line 39945
    :sswitch_0
    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    const/4 v1, 0x4

    :cond_0
    return v1

    .line 39946
    :sswitch_1
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/5C;->A03(I)I

    move-result v0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x3 -> :sswitch_0
        0xfffe -> :sswitch_1
    .end sparse-switch
.end method
