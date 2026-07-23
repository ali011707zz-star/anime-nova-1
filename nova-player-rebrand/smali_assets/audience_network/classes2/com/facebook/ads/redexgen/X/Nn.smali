.class public abstract Lcom/facebook/ads/redexgen/X/Nn;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Nn;->A0H()V

    return-void
.end method

.method public static A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/Nj;
    .locals 2

    .line 54707
    new-instance v1, Lcom/facebook/ads/redexgen/X/Ni;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Ni;-><init>()V

    .line 54708
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Nn;->A0A(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ni;->A06(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ni;

    move-result-object v1

    .line 54709
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Nn;->A09(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ni;->A07(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ni;

    move-result-object v1

    .line 54710
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Nn;->A0B(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ni;->A05(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ni;

    move-result-object v1

    .line 54711
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Nn;->A06(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ni;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ni;

    move-result-object v0

    .line 54712
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ni;->A08()Lcom/facebook/ads/redexgen/X/Nj;

    move-result-object v0

    .line 54713
    return-object v0
.end method

.method public static A01(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/Ns;
    .locals 3

    .line 54714
    const/16 v2, 0x18a

    const/16 v1, 0xe

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nn;->A02(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 54715
    .local v0, "ntdStyle":I
    new-instance v1, Lcom/facebook/ads/redexgen/X/Nr;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Nr;-><init>()V

    .line 54716
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Nn;->A0D(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nr;->A0F(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Nr;

    move-result-object v1

    .line 54717
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Nn;->A0G(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nr;->A0J(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Nr;

    move-result-object v1

    .line 54718
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Nn;->A0F(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nr;->A0I(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Nr;

    move-result-object v1

    .line 54719
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Nn;->A0E(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nr;->A0H(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Nr;

    move-result-object v1

    .line 54720
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Nn;->A08(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nr;->A0E(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Nr;

    move-result-object v1

    .line 54721
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Nn;->A07(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nr;->A0D(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Nr;

    move-result-object v0

    .line 54722
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Nr;->A0A(I)Lcom/facebook/ads/redexgen/X/Nr;

    move-result-object v1

    .line 54723
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Nn;->A0C(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nr;->A0G(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Nr;

    move-result-object v1

    .line 54724
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Nn;->A05(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nr;->A0C(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Nr;

    move-result-object v1

    .line 54725
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Nn;->A04(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nr;->A0B(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Nr;

    move-result-object v0

    .line 54726
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nr;->A0K()Lcom/facebook/ads/redexgen/X/Ns;

    move-result-object v0

    .line 54727
    return-object v0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Nn;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x79

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    .line 54728
    const/16 v2, 0x17e

    const/16 v1, 0xc

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nn;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 54729
    .local v0, "genericTextObject":Lorg/json/JSONObject;
    const/16 v2, 0xf0

    const/16 v1, 0x9

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nn;->A02(III)Ljava/lang/String;

    move-result-object v3

    if-nez p0, :cond_0

    :goto_0
    return-object v3

    .line 54730
    :cond_0
    const/16 v2, 0x1bf

    const/16 v1, 0x9

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nn;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static A04(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    .line 54731
    const/16 v2, 0x17e

    const/16 v1, 0xc

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nn;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 54732
    .local v0, "genericTextObject":Lorg/json/JSONObject;
    const/16 v2, 0xa4

    const/16 v1, 0x12

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nn;->A02(III)Ljava/lang/String;

    move-result-object v3

    if-nez p0, :cond_0

    :goto_0
    return-object v3

    .line 54733
    :cond_0
    const/16 v2, 0xf9

    const/16 v1, 0xe

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nn;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static A05(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    .line 54734
    const/16 v2, 0x17e

    const/16 v1, 0xc

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nn;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 54735
    .local v0, "genericTextObject":Lorg/json/JSONObject;
    const/16 v2, 0xb6

    const/16 v1, 0xd

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nn;->A02(III)Ljava/lang/String;

    move-result-object v3

    if-nez p0, :cond_0

    :goto_0
    return-object v3

    .line 54736
    :cond_0
    const/16 v2, 0x107

    const/16 v1, 0x11

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nn;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static A06(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    .line 54737
    const/16 v2, 0x17e

    const/16 v1, 0xc

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nn;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 54738
    .local v0, "genericTextObject":Lorg/json/JSONObject;
    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nn;->A02(III)Ljava/lang/String;

    move-result-object v3

    if-nez p0, :cond_0

    :goto_0
    return-object v3

    .line 54739
    :cond_0
    const/16 v2, 0x118

    const/16 v1, 0x8

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nn;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static A07(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    .line 54740
    const/16 v2, 0x17e

    const/16 v1, 0xc

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nn;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 54741
    .local v0, "genericTextObject":Lorg/json/JSONObject;
    const/16 v2, 0x19

    const/16 v1, 0x1b

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nn;->A02(III)Ljava/lang/String;

    move-result-object v3

    if-nez p0, :cond_0

    :goto_0
    return-object v3

    .line 54742
    :cond_0
    const/16 v2, 0x12f

    const/16 v1, 0x14

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nn;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static A08(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    .line 54743
    const/16 v2, 0x17e

    const/16 v1, 0xc

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nn;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 54744
    .local v0, "genericTextObject":Lorg/json/JSONObject;
    const/16 v2, 0x34

    const/16 v1, 0x11

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nn;->A02(III)Ljava/lang/String;

    move-result-object v3

    if-nez p0, :cond_0

    :goto_0
    return-object v3

    .line 54745
    :cond_0
    const/16 v2, 0x120

    const/16 v1, 0xf

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nn;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static A09(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    .line 54746
    const/16 v2, 0x17e

    const/16 v1, 0xc

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nn;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 54747
    .local v0, "genericTextObject":Lorg/json/JSONObject;
    const/16 v2, 0x73

    const/16 v1, 0x31

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nn;->A02(III)Ljava/lang/String;

    move-result-object v3

    if-nez p0, :cond_0

    :goto_0
    return-object v3

    .line 54748
    :cond_0
    const/16 v2, 0x154

    const/16 v1, 0x1c

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nn;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static A0A(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    .line 54749
    const/16 v2, 0x17e

    const/16 v1, 0xc

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nn;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 54750
    .local v0, "genericTextObject":Lorg/json/JSONObject;
    const/16 v2, 0x45

    const/16 v1, 0x2e

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nn;->A02(III)Ljava/lang/String;

    move-result-object v3

    if-nez p0, :cond_0

    :goto_0
    return-object v3

    .line 54751
    :cond_0
    const/16 v2, 0x170

    const/16 v1, 0xe

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nn;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static A0B(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    .line 54752
    const/16 v2, 0x17e

    const/16 v1, 0xc

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nn;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 54753
    .local v0, "genericTextObject":Lorg/json/JSONObject;
    const/16 v2, 0x8

    const/16 v1, 0x11

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nn;->A02(III)Ljava/lang/String;

    move-result-object v3

    if-nez p0, :cond_0

    :goto_0
    return-object v3

    .line 54754
    :cond_0
    const/16 v2, 0x143

    const/16 v1, 0x11

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nn;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static A0C(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    .line 54755
    const/16 v2, 0x17e

    const/16 v1, 0xc

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nn;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 54756
    .local v0, "genericTextObject":Lorg/json/JSONObject;
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nn;->A02(III)Ljava/lang/String;

    move-result-object v3

    if-nez p0, :cond_0

    :goto_0
    return-object v3

    .line 54757
    :cond_0
    const/16 v2, 0x198

    const/16 v1, 0x8

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nn;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static A0D(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    .line 54758
    const/16 v2, 0x17e

    const/16 v1, 0xc

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nn;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 54759
    .local v0, "genericTextObject":Lorg/json/JSONObject;
    const/16 v2, 0xc3

    const/16 v1, 0x11

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nn;->A02(III)Ljava/lang/String;

    move-result-object v3

    if-nez p0, :cond_0

    :goto_0
    return-object v3

    .line 54760
    :cond_0
    const/16 v2, 0x1a0

    const/16 v1, 0xb

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nn;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static A0E(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    .line 54761
    const/16 v2, 0x17e

    const/16 v1, 0xc

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nn;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 54762
    .local v0, "genericTextObject":Lorg/json/JSONObject;
    const/16 v2, 0xdf

    const/16 v1, 0x11

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nn;->A02(III)Ljava/lang/String;

    move-result-object v3

    if-nez p0, :cond_0

    :goto_0
    return-object v3

    .line 54763
    :cond_0
    const/16 v2, 0x1b6

    const/16 v1, 0x9

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nn;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static A0F(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    .line 54764
    const/16 v2, 0x17e

    const/16 v1, 0xc

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nn;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 54765
    .local v0, "genericTextObject":Lorg/json/JSONObject;
    const/16 v2, 0xd8

    const/4 v1, 0x7

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nn;->A02(III)Ljava/lang/String;

    move-result-object v3

    if-nez p0, :cond_0

    :goto_0
    return-object v3

    .line 54766
    :cond_0
    const/16 v2, 0x1af

    const/4 v1, 0x7

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nn;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static A0G(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    .line 54767
    const/16 v2, 0x17e

    const/16 v1, 0xc

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nn;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 54768
    .local v0, "genericTextObject":Lorg/json/JSONObject;
    const/16 v2, 0xd4

    const/4 v1, 0x4

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nn;->A02(III)Ljava/lang/String;

    move-result-object v3

    if-nez p0, :cond_0

    :goto_0
    return-object v3

    .line 54769
    :cond_0
    const/16 v2, 0x1ab

    const/4 v1, 0x4

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nn;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static A0H()V
    .locals 1

    const/16 v0, 0x1c8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Nn;->A00:[B

    return-void

    :array_0
    .array-data 1
        0xft
        0x38t
        0x3bt
        0x3ft
        0x31t
        -0x14t
        0xdt
        0x30t
        0x39t
        0x65t
        0x64t
        0x6at
        0x5ft
        0x64t
        0x6bt
        0x5bt
        0x16t
        0x4dt
        0x57t
        0x6at
        0x59t
        0x5et
        0x5ft
        0x64t
        0x5dt
        0x1t
        0x2dt
        0x2ct
        0x32t
        0x27t
        0x2ct
        0x33t
        0x23t
        -0x22t
        0x27t
        0x2ct
        -0x22t
        0x19t
        0x31t
        0x23t
        0x21t
        0x31t
        0x1bt
        -0x22t
        0x32t
        0x2dt
        -0x22t
        0x19t
        0x1ft
        0x2et
        0x2et
        0x1bt
        0x0t
        0x2ct
        0x2bt
        0x31t
        0x26t
        0x2bt
        0x32t
        0x22t
        -0x23t
        0x31t
        0x2ct
        -0x23t
        0x18t
        0x1et
        0x2dt
        0x2dt
        0x1at
        -0x28t
        0x4t
        0x3t
        0x9t
        -0x2t
        0x3t
        0xat
        -0x6t
        -0x4bt
        0xct
        -0xat
        0x9t
        -0x8t
        -0x3t
        -0x2t
        0x3t
        -0x4t
        -0x4bt
        0x9t
        0x4t
        -0x4bt
        0x7t
        -0x6t
        -0x8t
        -0x6t
        -0x2t
        0xbt
        -0x6t
        -0x4bt
        -0xat
        0x3t
        -0x4bt
        -0x2t
        0x3t
        -0x3et
        -0x4t
        -0xat
        0x2t
        -0x6t
        -0x4bt
        0x7t
        -0x6t
        0xct
        -0xat
        0x7t
        -0x7t
        -0x41t
        -0x15t
        -0x16t
        -0x10t
        -0x1bt
        -0x16t
        -0xft
        -0x1ft
        -0x64t
        -0xdt
        -0x23t
        -0x10t
        -0x21t
        -0x1ct
        -0x1bt
        -0x16t
        -0x1dt
        -0x64t
        -0x10t
        -0x15t
        -0x64t
        -0x12t
        -0x1ft
        -0x21t
        -0x1ft
        -0x1bt
        -0xet
        -0x1ft
        -0x64t
        -0x9t
        -0x13t
        -0xft
        -0x23t
        -0x16t
        -0x10t
        -0x1bt
        -0x10t
        -0xbt
        -0x7t
        -0x9t
        -0x21t
        -0xft
        -0x12t
        -0x12t
        -0x1ft
        -0x16t
        -0x21t
        -0xbt
        -0x7t
        -0x2at
        -0x9t
        -0x14t
        -0xbt
        -0x10t
        -0xbt
        -0x12t
        -0x59t
        -0x10t
        -0xbt
        -0x59t
        -0x1et
        -0x6t
        -0x14t
        -0x16t
        -0x6t
        -0x1ct
        -0x6t
        0x28t
        0x49t
        0x3et
        0x47t
        0x42t
        0x47t
        0x40t
        -0x7t
        0x42t
        0x47t
        0x7t
        0x7t
        0x7t
        -0x18t
        -0x5t
        0xdt
        -0x9t
        0x8t
        -0x6t
        -0x4at
        -0x1t
        0x4t
        -0x4at
        -0xft
        0x9t
        -0x5t
        -0x7t
        0x9t
        -0xdt
        0x9t
        0x1at
        0x32t
        0x30t
        0x37t
        0x44t
        0x5ct
        0x5at
        0x61t
        0x11t
        0x52t
        0x55t
        0xft
        0x27t
        0x25t
        0x2ct
        -0x24t
        0x1dt
        0x20t
        -0x24t
        0x25t
        0x2at
        -0x24t
        0x17t
        0x2ft
        0x21t
        0x1ft
        0x2ft
        0x19t
        0x29t
        0x46t
        0x45t
        0x44t
        0x49t
        0x45t
        0x48t
        0x3bt
        0x3at
        0x2dt
        0x41t
        0x40t
        0x3bt
        0x2ft
        0x38t
        0x35t
        0x2ft
        0x37t
        0x2bt
        0x35t
        0x3at
        0x2bt
        0x44t
        0x4t
        0x18t
        0x17t
        0x12t
        0x6t
        0xft
        0xct
        0x6t
        0xet
        0x2t
        0x12t
        0x13t
        0x8t
        0x11t
        0xct
        0x11t
        0xat
        0x41t
        0x4at
        0x4dt
        0x51t
        0x43t
        0x3dt
        0x3ft
        0x42t
        -0x17t
        -0xbt
        -0xct
        -0x6t
        -0x11t
        -0xct
        -0x5t
        -0x15t
        -0x1bt
        -0x6t
        -0xbt
        -0x1bt
        -0x19t
        -0xat
        -0xat
        -0x1ft
        -0x13t
        -0x14t
        -0xet
        -0x19t
        -0x14t
        -0xdt
        -0x1dt
        -0x23t
        -0xet
        -0x13t
        -0x23t
        -0x21t
        -0x12t
        -0x12t
        -0x23t
        -0x19t
        -0x14t
        -0x23t
        -0xat
        0xet
        0x1at
        0x19t
        0x1ft
        0x14t
        0x19t
        0x20t
        0x10t
        0xat
        0x22t
        0xct
        0x1ft
        0xet
        0x13t
        0x14t
        0x19t
        0x12t
        0x20t
        0x2ct
        0x2bt
        0x31t
        0x26t
        0x2bt
        0x32t
        0x22t
        0x1ct
        0x34t
        0x1et
        0x31t
        0x20t
        0x25t
        0x26t
        0x2bt
        0x24t
        0x1ct
        0x23t
        0x2ct
        0x2ft
        0x1ct
        0x2ft
        0x22t
        0x34t
        0x1et
        0x2ft
        0x21t
        0x5ft
        0x5dt
        0x66t
        0x5dt
        0x6at
        0x61t
        0x5bt
        0x57t
        0x6at
        0x5dt
        0x6ft
        0x59t
        0x6at
        0x5ct
        0x11t
        0xft
        0x18t
        0xft
        0x1ct
        0x13t
        0xdt
        0x9t
        0x1et
        0xft
        0x22t
        0x1et
        -0x8t
        -0x2t
        -0x12t
        -0x17t
        -0xdt
        -0x13t
        -0x7t
        -0x8t
        -0x17t
        -0x3t
        -0x2t
        0x3t
        -0xat
        -0x11t
        0x58t
        0x5et
        0x4et
        0x49t
        0x5et
        0x4ft
        0x62t
        0x5et
        0x62t
        0x55t
        0x67t
        0x51t
        0x62t
        0x54t
        0x4ft
        0x59t
        0x5et
        0x4ft
        0x68t
        0x1t
        -0x7t
        -0x9t
        -0x2t
        -0x6t
        -0xet
        -0x10t
        -0x9t
        -0x1at
        -0x18t
        -0x15t
        0x44t
        0x3ct
        0x3at
        0x41t
        0x30t
        0x3at
        0x3ft
        0x30t
        0x49t
        0x2ct
        0x29t
        0x28t
        0x27t
        0x2ct
        0x28t
        0x2bt
        0x1et
        0x1dt
    .end array-data
.end method
