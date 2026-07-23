.class public final Lcom/facebook/ads/redexgen/X/NR;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static A0C:[B = null

.field public static final serialVersionUID:J = 0x12e0ec9adefe9e7L


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/NT;

.field public A01:J

.field public A02:Lcom/facebook/ads/redexgen/X/NU;

.field public A03:Lcom/facebook/ads/redexgen/X/NY;

.field public A04:Lcom/facebook/ads/redexgen/X/Nc;

.field public A05:Lcom/facebook/ads/redexgen/X/Nd;

.field public A06:Ljava/lang/String;

.field public A07:Z

.field public A08:Z

.field public A09:Z

.field public A0A:Z

.field public A0B:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/NR;->A04()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/NR;
    .locals 15

    .line 54141
    new-instance v2, Lcom/facebook/ads/redexgen/X/NR;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/NR;-><init>()V

    .line 54142
    .local v1, "mAdInfo":Lcom/facebook/ads/redexgen/X/NR;
    const/16 v3, 0x176

    const/16 v1, 0xc

    const/16 v0, 0xb

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 54143
    .local v2, "genericTextObject":Lorg/json/JSONObject;
    new-instance v4, Lcom/facebook/ads/redexgen/X/NX;

    invoke-direct {v4}, Lcom/facebook/ads/redexgen/X/NX;-><init>()V

    .line 54144
    const/16 v3, 0x306

    const/4 v1, 0x5

    const/16 v0, 0x5e

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/NX;->A0Z(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v4

    .line 54145
    const/16 v3, 0x2fe

    const/16 v1, 0x8

    const/16 v0, 0x1a

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/NX;->A0Y(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v4

    .line 54146
    const/16 v3, 0x88

    const/4 v1, 0x4

    const/16 v0, 0x19

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/NX;->A0M(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v4

    .line 54147
    const/16 v3, 0x2f0

    const/16 v1, 0xe

    const/16 v0, 0x53

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/NX;->A0X(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v4

    .line 54148
    const/16 v3, 0x25a

    const/16 v1, 0xc

    const/16 v0, 0x65

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/NX;->A0V(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v4

    .line 54149
    const/16 v3, 0x232

    const/16 v1, 0xc

    const/16 v0, 0x17

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/NX;->A0S(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v4

    .line 54150
    const/16 v3, 0x80

    const/16 v1, 0x8

    const/16 v0, 0x35

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/NX;->A0J(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v4

    .line 54151
    const/16 v3, 0xdb

    const/16 v1, 0xe

    const/16 v0, 0x6f

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/NX;->A0O(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v4

    .line 54152
    const/16 v3, 0x5d

    const/16 v1, 0x10

    const/16 v0, 0x48

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/NX;->A0I(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v4

    .line 54153
    const/16 v3, 0xa5

    const/16 v1, 0x8

    const/16 v0, 0x1c

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/NX;->A0K(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v4

    .line 54154
    const/16 v3, 0xca

    const/16 v1, 0x11

    const/16 v0, 0x8

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/NX;->A0N(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v5

    .line 54155
    const/16 v3, 0x24f

    const/16 v1, 0xb

    const/16 v0, 0x6a

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v4

    const/16 v3, 0x4c

    const/4 v1, 0x6

    const/16 v0, 0x1e

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v4, v0}, Lcom/facebook/ads/redexgen/X/NR;->A03(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/NX;->A0U(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v5

    .line 54156
    const/16 v3, 0xe9

    const/16 v1, 0x13

    const/16 v0, 0x2c

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v4

    const/16 v3, 0x8

    const/16 v1, 0x9

    const/16 v0, 0x3f

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v4, v0}, Lcom/facebook/ads/redexgen/X/NR;->A03(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54157
    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/NX;->A0P(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v5

    .line 54158
    const/16 v3, 0x2c2

    const/16 v1, 0x9

    const/16 v0, 0x3d

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v4

    const/16 v3, 0x59

    const/4 v1, 0x4

    const/16 v0, 0x77

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v4, v0}, Lcom/facebook/ads/redexgen/X/NR;->A03(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/NX;->A0W(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v5

    .line 54159
    const/16 v3, 0xad

    const/16 v1, 0xd

    const/16 v0, 0x63

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x63

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v4, v0}, Lcom/facebook/ads/redexgen/X/NR;->A03(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/NX;->A0L(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v5

    .line 54160
    const/16 v3, 0x23e

    const/16 v1, 0x11

    const/16 v0, 0x29

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v4

    const/16 v3, 0x52

    const/4 v1, 0x7

    const/16 v0, 0x1e

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v4, v0}, Lcom/facebook/ads/redexgen/X/NR;->A03(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54161
    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/NX;->A0T(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v5

    .line 54162
    const/16 v3, 0x15b

    const/16 v1, 0x1b

    const/16 v0, 0x1c

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v4

    const/16 v3, 0x11

    const/16 v1, 0x16

    const/16 v0, 0x43

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v4, v0}, Lcom/facebook/ads/redexgen/X/NR;->A03(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54163
    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/NX;->A0Q(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v5

    .line 54164
    const/16 v3, 0x224

    const/16 v1, 0xe

    const/16 v0, 0x36

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x37

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v4, v0}, Lcom/facebook/ads/redexgen/X/NR;->A03(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/NX;->A0R(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v0

    .line 54165
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NX;->A0a()Lcom/facebook/ads/redexgen/X/NY;

    move-result-object v0

    .line 54166
    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/NR;->A08(Lcom/facebook/ads/redexgen/X/NY;)V

    .line 54167
    const/16 v3, 0x21d

    const/4 v1, 0x7

    const/16 v0, 0xb

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/NR;->A0B(Ljava/lang/String;)V

    .line 54168
    const/16 v3, 0x14f

    const/16 v1, 0xc

    const/16 v0, 0x1d

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 54169
    const/16 v3, 0x97

    const/16 v1, 0xe

    const/16 v0, 0xc

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 54170
    const/16 v3, 0x8c

    const/16 v1, 0xb

    const/16 v0, 0x5f

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 54171
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/NR;->A02(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Nc;

    invoke-direct {v0, v5, v4, v3, v1}, Lcom/facebook/ads/redexgen/X/Nc;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 54172
    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/NR;->A09(Lcom/facebook/ads/redexgen/X/Nc;)V

    .line 54173
    const/16 v3, 0x30b

    const/16 v1, 0x13

    const/16 v0, 0x40

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v1

    const/4 v5, -0x1

    invoke-virtual {p0, v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 54174
    const/16 v3, 0x2df

    const/16 v1, 0x11

    const/16 v0, 0x15

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 54175
    .local v3, "unskippableSeconds":I
    :goto_0
    new-instance v4, Lcom/facebook/ads/redexgen/X/NT;

    invoke-direct {v4}, Lcom/facebook/ads/redexgen/X/NT;-><init>()V

    .line 54176
    const/16 v3, 0x361

    const/16 v1, 0x9

    const/16 v0, 0x71

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/NT;->A0L(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/NT;

    move-result-object v4

    .line 54177
    const/16 v3, 0x349

    const/16 v1, 0x18

    const/16 v0, 0x79

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v0, -0x1

    invoke-virtual {p0, v3, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 54178
    invoke-virtual {v4, v0, v1}, Lcom/facebook/ads/redexgen/X/NT;->A0J(J)Lcom/facebook/ads/redexgen/X/NT;

    move-result-object v0

    .line 54179
    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/NT;->A0F(I)Lcom/facebook/ads/redexgen/X/NT;

    move-result-object v4

    .line 54180
    const/16 v3, 0x27a

    const/16 v1, 0x12

    const/16 v0, 0x48

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7fffffff

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/NT;->A0E(I)Lcom/facebook/ads/redexgen/X/NT;

    move-result-object v4

    .line 54181
    const/16 v3, 0x266

    const/16 v1, 0x14

    const/16 v0, 0x6c

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/NT;->A0D(I)Lcom/facebook/ads/redexgen/X/NT;

    move-result-object v1

    .line 54182
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/No;->A02(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/No;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NT;->A0K(Lcom/facebook/ads/redexgen/X/No;)Lcom/facebook/ads/redexgen/X/NT;

    move-result-object v5

    .line 54183
    .local v4, "adMediaBuilder":Lcom/facebook/ads/redexgen/X/NT;
    const/16 v3, 0x188

    const/4 v1, 0x5

    const/16 v0, 0x1d

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 54184
    .local v5, "imageObject":Lorg/json/JSONObject;
    if-eqz v6, :cond_0

    .line 54185
    const/16 v3, 0x31e

    const/4 v1, 0x3

    const/16 v0, 0x62

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/NT;->A0M(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/NT;

    move-result-object v4

    .line 54186
    const/16 v3, 0x36a

    const/4 v1, 0x5

    const/16 v0, 0x9

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/NT;->A0I(I)Lcom/facebook/ads/redexgen/X/NT;

    move-result-object v4

    .line 54187
    const/16 v3, 0x182

    const/4 v1, 0x6

    const/16 v0, 0x52

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/NT;->A0H(I)Lcom/facebook/ads/redexgen/X/NT;

    .line 54188
    :cond_0
    invoke-direct {v2, v5}, Lcom/facebook/ads/redexgen/X/NR;->A06(Lcom/facebook/ads/redexgen/X/NT;)V

    .line 54189
    const/16 v3, 0x2ad

    const/16 v1, 0x15

    const/16 v0, 0x7e

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/NR;->A0F(Z)V

    .line 54190
    new-instance v6, Lcom/facebook/ads/redexgen/X/Nd;

    .line 54191
    const/16 v3, 0x140

    const/16 v1, 0xf

    const/16 v0, 0x5f

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Xd;->A04(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v7

    .line 54192
    const/16 v3, 0xfc

    const/16 v1, 0x18

    const/16 v0, 0x39

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v3, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 54193
    const/16 v5, 0x114

    const/16 v4, 0x2c

    const/16 v3, 0x42

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 54194
    const/16 v3, 0x1dc

    const/16 v1, 0x1a

    const/16 v0, 0x4b

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 54195
    const/16 v3, 0x18d

    const/16 v1, 0x1f

    const/16 v0, 0x2e

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 54196
    const/16 v3, 0x1ac

    const/16 v1, 0x22

    const/16 v0, 0x4f

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v14

    const-wide/16 v0, 0x0

    .end local v2    # "genericTextObject":Lorg/json/JSONObject;
    .end local v3    # "unskippableSeconds":I
    .local p2, "genericTextObject":Lorg/json/JSONObject;
    .local p3, "unskippableSeconds":I
    invoke-direct/range {v6 .. v14}, Lcom/facebook/ads/redexgen/X/Nd;-><init>(Ljava/util/List;JJZZZ)V

    .line 54197
    invoke-direct {v2, v6}, Lcom/facebook/ads/redexgen/X/NR;->A0A(Lcom/facebook/ads/redexgen/X/Nd;)V

    .line 54198
    const/16 v5, 0x20a

    const/16 v4, 0x13

    const/16 v3, 0x4b

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {v2, v3}, Lcom/facebook/ads/redexgen/X/NR;->A0C(Z)V

    .line 54199
    const/16 v5, 0x6d

    const/16 v4, 0x13

    const/16 v3, 0x3b

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-direct {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/NR;->A05(J)V

    .line 54200
    return-object v2

    .line 54201
    :cond_1
    invoke-virtual {p0, v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    goto/16 :goto_0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/NR;->A0C:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x19

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 5

    .line 54202
    const/16 v2, 0xba

    const/16 v1, 0x10

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x27

    const/16 v1, 0x25

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54203
    .local v2, "delayText":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54204
    const/16 v2, 0x176

    const/16 v1, 0xc

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 54205
    .local v3, "genericTextObject":Lorg/json/JSONObject;
    if-nez v0, :cond_1

    .line 54206
    :goto_0
    move-object v1, v3

    .line 54207
    .end local v3    # "genericTextObject":Lorg/json/JSONObject;
    :cond_0
    return-object v1

    .line 54208
    :cond_1
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static A03(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 54209
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x36f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/NR;->A0C:[B

    return-void

    :array_0
    .array-data 1
        0x39t
        0x1bt
        0xet
        0x1ft
        0x1dt
        0x15t
        0x8t
        0x3t
        0x62t
        0x49t
        0x51t
        0x48t
        0x4at
        0x49t
        0x47t
        0x42t
        0x55t
        0x1ct
        0x28t
        0x35t
        0x37t
        0x7at
        0x1dt
        0x35t
        0x35t
        0x3dt
        0x36t
        0x3ft
        0x7at
        0xat
        0x36t
        0x3bt
        0x23t
        0x7at
        0x9t
        0x2et
        0x35t
        0x28t
        0x3ft
        0x7et
        0x43t
        0x17t
        0x40t
        0x5et
        0x5bt
        0x5bt
        0x17t
        0x56t
        0x42t
        0x43t
        0x58t
        0x5at
        0x56t
        0x43t
        0x5et
        0x54t
        0x56t
        0x5bt
        0x5bt
        0x4et
        0x17t
        0x58t
        0x47t
        0x52t
        0x59t
        0x17t
        0x5et
        0x59t
        0x17t
        0x6ct
        0x44t
        0x52t
        0x54t
        0x44t
        0x6at
        0x44t
        0x55t
        0x66t
        0x73t
        0x6et
        0x69t
        0x60t
        0x55t
        0x62t
        0x71t
        0x6et
        0x62t
        0x70t
        0x74t
        0x3dt
        0x7t
        0x14t
        0xbt
        0x30t
        0x35t
        0xet
        0x32t
        0x23t
        0x34t
        0x30t
        0x25t
        0x38t
        0x27t
        0x34t
        0xet
        0x25t
        0x28t
        0x21t
        0x34t
        0x43t
        0x46t
        0x7dt
        0x54t
        0x4bt
        0x46t
        0x47t
        0x4dt
        0x7dt
        0x4et
        0x4dt
        0x4dt
        0x52t
        0x7dt
        0x56t
        0x4bt
        0x4ft
        0x47t
        0x51t
        0x4dt
        0x5ct
        0x5ct
        0x73t
        0x5ft
        0x45t
        0x56t
        0x49t
        0x62t
        0x6ft
        0x64t
        0x79t
        0x24t
        0x33t
        0x32t
        0x32t
        0x29t
        0x28t
        0x19t
        0x2ft
        0x25t
        0x29t
        0x28t
        0x76t
        0x74t
        0x79t
        0x79t
        0x4at
        0x61t
        0x7at
        0x4at
        0x74t
        0x76t
        0x61t
        0x7ct
        0x7at
        0x7bt
        0x66t
        0x64t
        0x71t
        0x60t
        0x62t
        0x6at
        0x77t
        0x7ct
        0x19t
        0x1bt
        0xet
        0x1ft
        0x1dt
        0x15t
        0x8t
        0x3t
        0x25t
        0xet
        0x1ft
        0x2t
        0xet
        0x45t
        0x44t
        0x4dt
        0x40t
        0x58t
        0x7et
        0x42t
        0x4dt
        0x48t
        0x42t
        0x4at
        0x7et
        0x55t
        0x44t
        0x59t
        0x55t
        0x75t
        0x74t
        0x62t
        0x65t
        0x78t
        0x7ft
        0x70t
        0x65t
        0x78t
        0x7et
        0x7ft
        0x4et
        0x65t
        0x78t
        0x65t
        0x7dt
        0x74t
        0x12t
        0x19t
        0x1t
        0x18t
        0x1at
        0x19t
        0x17t
        0x12t
        0x29t
        0x15t
        0x19t
        0x3t
        0x18t
        0x2t
        0x51t
        0x5at
        0x42t
        0x5bt
        0x59t
        0x5at
        0x54t
        0x51t
        0x6at
        0x56t
        0x5at
        0x40t
        0x5bt
        0x41t
        0x6at
        0x41t
        0x50t
        0x4dt
        0x41t
        0x45t
        0x4et
        0x44t
        0x7ft
        0x43t
        0x41t
        0x52t
        0x44t
        0x7ft
        0x46t
        0x4ft
        0x52t
        0x43t
        0x45t
        0x7ft
        0x56t
        0x49t
        0x45t
        0x57t
        0x7ft
        0x54t
        0x49t
        0x4dt
        0x45t
        0x3et
        0x35t
        0x3ft
        0x4t
        0x38t
        0x3at
        0x29t
        0x3ft
        0x4t
        0x3dt
        0x34t
        0x29t
        0x38t
        0x3et
        0x4t
        0x2dt
        0x32t
        0x3et
        0x2ct
        0x4t
        0x2ft
        0x32t
        0x36t
        0x3et
        0x4t
        0x3dt
        0x34t
        0x29t
        0x4t
        0x28t
        0x3et
        0x38t
        0x34t
        0x35t
        0x3ft
        0x4t
        0x3et
        0x35t
        0x3ft
        0x4t
        0x38t
        0x3at
        0x29t
        0x3ft
        0x23t
        0x28t
        0x22t
        0x19t
        0x25t
        0x27t
        0x34t
        0x22t
        0x19t
        0x2ft
        0x2bt
        0x27t
        0x21t
        0x23t
        0x35t
        0x62t
        0x66t
        0x65t
        0x60t
        0x5bt
        0x67t
        0x6bt
        0x69t
        0x69t
        0x65t
        0x6at
        0x60t
        0x63t
        0x77t
        0x6at
        0x68t
        0x5at
        0x62t
        0x6at
        0x6at
        0x62t
        0x69t
        0x60t
        0x5at
        0x75t
        0x69t
        0x64t
        0x7ct
        0x5at
        0x76t
        0x71t
        0x6at
        0x77t
        0x60t
        0x5at
        0x71t
        0x60t
        0x7dt
        0x71t
        0x75t
        0x77t
        0x7ct
        0x77t
        0x60t
        0x7bt
        0x71t
        0x4dt
        0x66t
        0x77t
        0x6at
        0x66t
        0x23t
        0x2et
        0x22t
        0x2ct
        0x23t
        0x3ft
        0x6dt
        0x69t
        0x65t
        0x63t
        0x61t
        0x5et
        0x44t
        0x68t
        0x52t
        0x59t
        0x53t
        0x68t
        0x54t
        0x56t
        0x45t
        0x53t
        0x68t
        0x41t
        0x5t
        0x68t
        0x45t
        0x52t
        0x53t
        0x52t
        0x44t
        0x5et
        0x50t
        0x59t
        0x68t
        0x52t
        0x59t
        0x56t
        0x55t
        0x5bt
        0x52t
        0x53t
        0x3ft
        0x25t
        0x9t
        0x39t
        0x35t
        0x9t
        0x33t
        0x38t
        0x32t
        0x9t
        0x35t
        0x37t
        0x24t
        0x32t
        0x9t
        0x20t
        0x64t
        0x9t
        0x24t
        0x33t
        0x32t
        0x33t
        0x25t
        0x3ft
        0x31t
        0x38t
        0x9t
        0x33t
        0x38t
        0x37t
        0x34t
        0x3at
        0x33t
        0x32t
        0x5et
        0x44t
        0x68t
        0x45t
        0x52t
        0x40t
        0x56t
        0x45t
        0x53t
        0x52t
        0x53t
        0x68t
        0x56t
        0x53t
        0x3bt
        0x21t
        0xdt
        0x21t
        0x37t
        0x31t
        0x3dt
        0x3ct
        0x36t
        0xdt
        0x37t
        0x3ct
        0x36t
        0xdt
        0x31t
        0x33t
        0x20t
        0x36t
        0xdt
        0x37t
        0x3ct
        0x33t
        0x30t
        0x3et
        0x37t
        0x36t
        0x6bt
        0x71t
        0x5dt
        0x74t
        0x6bt
        0x66t
        0x67t
        0x6dt
        0x5dt
        0x63t
        0x77t
        0x66t
        0x6bt
        0x6dt
        0x5dt
        0x6ft
        0x77t
        0x76t
        0x67t
        0x66t
        0x3bt
        0x21t
        0xdt
        0x25t
        0x33t
        0x26t
        0x31t
        0x3at
        0xdt
        0x33t
        0x3ct
        0x36t
        0xdt
        0x30t
        0x20t
        0x3dt
        0x25t
        0x21t
        0x37t
        0x62t
        0x73t
        0x71t
        0x79t
        0x73t
        0x75t
        0x77t
        0x5ft
        0x4et
        0x5dt
        0x5bt
        0x41t
        0x4at
        0x5dt
        0x5ct
        0x47t
        0x46t
        0x5ft
        0x70t
        0x4et
        0x4bt
        0x7ct
        0x6ft
        0x7at
        0x67t
        0x60t
        0x69t
        0x51t
        0x6dt
        0x61t
        0x7bt
        0x60t
        0x7at
        0x42t
        0x51t
        0x44t
        0x59t
        0x5et
        0x57t
        0x6ft
        0x53t
        0x5ft
        0x45t
        0x5et
        0x44t
        0x6ft
        0x44t
        0x55t
        0x48t
        0x44t
        0x1t
        0x12t
        0x7t
        0x1at
        0x1dt
        0x14t
        0x2ct
        0x7t
        0x16t
        0xbt
        0x7t
        0xet
        0x1dt
        0x8t
        0x15t
        0x12t
        0x1bt
        0x23t
        0xat
        0x1dt
        0x10t
        0x9t
        0x19t
        0x6t
        0x10t
        0x16t
        0x1at
        0x1bt
        0x11t
        0x6t
        0x2at
        0x13t
        0x1at
        0x7t
        0x2at
        0x1bt
        0x10t
        0xdt
        0x1t
        0x2at
        0x16t
        0x1t
        0x14t
        0x22t
        0x34t
        0x32t
        0x3et
        0x3ft
        0x35t
        0x22t
        0xet
        0x37t
        0x3et
        0x23t
        0xet
        0x23t
        0x34t
        0x26t
        0x30t
        0x23t
        0x35t
        0x75t
        0x6et
        0x69t
        0x71t
        0x59t
        0x63t
        0x68t
        0x62t
        0x59t
        0x65t
        0x67t
        0x74t
        0x62t
        0x60t
        0x7bt
        0x7ct
        0x64t
        0x4ct
        0x76t
        0x6bt
        0x7at
        0x67t
        0x4ct
        0x67t
        0x61t
        0x72t
        0x7dt
        0x60t
        0x7at
        0x67t
        0x7at
        0x7ct
        0x7dt
        0x14t
        0xft
        0x8t
        0x10t
        0x38t
        0xet
        0x9t
        0x13t
        0x15t
        0x8t
        0x38t
        0x13t
        0x15t
        0x6t
        0x9t
        0x14t
        0xet
        0x13t
        0xet
        0x8t
        0x9t
        0x57t
        0x4dt
        0x5et
        0x41t
        0x7bt
        0x50t
        0x41t
        0x5ct
        0x50t
        0x77t
        0x6ft
        0x6dt
        0x74t
        0x5bt
        0x65t
        0x6at
        0x60t
        0x5bt
        0x68t
        0x6bt
        0x77t
        0x61t
        0x5bt
        0x76t
        0x61t
        0x73t
        0x65t
        0x76t
        0x60t
        0x7ft
        0x67t
        0x65t
        0x7ct
        0x7ct
        0x6dt
        0x6et
        0x60t
        0x69t
        0x53t
        0x7ft
        0x69t
        0x6ft
        0x63t
        0x62t
        0x68t
        0x7ft
        0x39t
        0x25t
        0x29t
        0x23t
        0x2bt
        0x26t
        0x15t
        0x29t
        0x25t
        0x24t
        0x3et
        0x2ft
        0x32t
        0x3et
        0x70t
        0x76t
        0x61t
        0x77t
        0x6at
        0x77t
        0x6ft
        0x66t
        0x33t
        0x2et
        0x33t
        0x2bt
        0x22t
        0x2ct
        0x37t
        0x2at
        0x32t
        0x30t
        0x29t
        0x29t
        0x38t
        0x3bt
        0x35t
        0x3ct
        0x6t
        0x2at
        0x3ct
        0x3at
        0x36t
        0x37t
        0x3dt
        0x2at
        0xet
        0x9t
        0x17t
        0x6t
        0x19t
        0x14t
        0x15t
        0x1ft
        0x2ft
        0x11t
        0x5t
        0x4t
        0x1ft
        0x0t
        0x1ct
        0x11t
        0x9t
        0x2ft
        0x15t
        0x1et
        0x11t
        0x12t
        0x1ct
        0x15t
        0x14t
        0x4t
        0x1bt
        0x16t
        0x17t
        0x1dt
        0x2dt
        0x16t
        0x7t
        0x0t
        0x13t
        0x6t
        0x1bt
        0x1dt
        0x1ct
        0x2dt
        0x1t
        0x17t
        0x11t
        0x16t
        0x9t
        0x4t
        0x5t
        0xft
        0x3ft
        0x10t
        0x12t
        0x5t
        0xct
        0xft
        0x1t
        0x4t
        0x3ft
        0x13t
        0x9t
        0x1at
        0x5t
        0x3ft
        0x2t
        0x19t
        0x14t
        0x5t
        0x13t
        0x1et
        0x1t
        0xct
        0xdt
        0x7t
        0x37t
        0x1dt
        0x1at
        0x4t
        0x67t
        0x79t
        0x74t
        0x64t
        0x78t
    .end array-data
.end method

.method private final A05(J)V
    .locals 2

    .line 54210
    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/NR;->A01:J

    .line 54211
    return-void
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/NT;)V
    .locals 0

    .line 54212
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/NR;->A00:Lcom/facebook/ads/redexgen/X/NT;

    .line 54213
    return-void
.end method

.method private final A07(Lcom/facebook/ads/redexgen/X/NU;)V
    .locals 0

    .line 54214
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/NR;->A02:Lcom/facebook/ads/redexgen/X/NU;

    .line 54215
    return-void
.end method

.method private final A08(Lcom/facebook/ads/redexgen/X/NY;)V
    .locals 0

    .line 54216
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/NR;->A03:Lcom/facebook/ads/redexgen/X/NY;

    .line 54217
    return-void
.end method

.method private final A09(Lcom/facebook/ads/redexgen/X/Nc;)V
    .locals 0

    .line 54218
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/NR;->A04:Lcom/facebook/ads/redexgen/X/Nc;

    .line 54219
    return-void
.end method

.method private final A0A(Lcom/facebook/ads/redexgen/X/Nd;)V
    .locals 0

    .line 54220
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/NR;->A05:Lcom/facebook/ads/redexgen/X/Nd;

    .line 54221
    return-void
.end method

.method private final A0B(Ljava/lang/String;)V
    .locals 0

    .line 54222
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/NR;->A06:Ljava/lang/String;

    .line 54223
    return-void
.end method

.method private final A0C(Z)V
    .locals 0

    .line 54224
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/NR;->A08:Z

    .line 54225
    return-void
.end method

.method private final A0D(Z)V
    .locals 0

    .line 54226
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/NR;->A09:Z

    .line 54227
    return-void
.end method

.method private final A0E(Z)V
    .locals 0

    .line 54228
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/NR;->A0A:Z

    .line 54229
    return-void
.end method

.method private final A0F(Z)V
    .locals 0

    .line 54230
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/NR;->A0B:Z

    .line 54231
    return-void
.end method


# virtual methods
.method public final A0G()J
    .locals 2

    .line 54232
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/NR;->A01:J

    return-wide v0
.end method

.method public final A0H()Lcom/facebook/ads/redexgen/X/NU;
    .locals 1

    .line 54233
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NR;->A02:Lcom/facebook/ads/redexgen/X/NU;

    return-object v0
.end method

.method public final A0I()Lcom/facebook/ads/redexgen/X/NY;
    .locals 1

    .line 54234
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NR;->A03:Lcom/facebook/ads/redexgen/X/NY;

    return-object v0
.end method

.method public final A0J()Lcom/facebook/ads/redexgen/X/Nc;
    .locals 1

    .line 54235
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NR;->A04:Lcom/facebook/ads/redexgen/X/Nc;

    return-object v0
.end method

.method public final A0K()Lcom/facebook/ads/redexgen/X/Nd;
    .locals 1

    .line 54236
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NR;->A05:Lcom/facebook/ads/redexgen/X/Nd;

    return-object v0
.end method

.method public final A0L()Ljava/lang/String;
    .locals 1

    .line 54237
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NR;->A06:Ljava/lang/String;

    return-object v0
.end method

.method public final A0M(I)V
    .locals 1

    .line 54238
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NR;->A00:Lcom/facebook/ads/redexgen/X/NT;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/NT;->A0D(I)Lcom/facebook/ads/redexgen/X/NT;

    .line 54239
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NR;->A00:Lcom/facebook/ads/redexgen/X/NT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NT;->A0Q()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/NR;->A07(Lcom/facebook/ads/redexgen/X/NU;)V

    .line 54240
    return-void
.end method

.method public final A0N(Lorg/json/JSONObject;)V
    .locals 1

    .line 54241
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NR;->A00:Lcom/facebook/ads/redexgen/X/NT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NT;->A0Q()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/NR;->A07(Lcom/facebook/ads/redexgen/X/NU;)V

    .line 54242
    return-void
.end method

.method public final A0O(Lorg/json/JSONObject;)V
    .locals 4

    .line 54243
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/NR;->A00:Lcom/facebook/ads/redexgen/X/NT;

    const/16 v2, 0x321

    const/16 v1, 0x16

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/NT;->A0O(Z)Lcom/facebook/ads/redexgen/X/NT;

    .line 54244
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/NR;->A00:Lcom/facebook/ads/redexgen/X/NT;

    const/16 v2, 0x1f6

    const/16 v1, 0x14

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/NT;->A0N(Z)Lcom/facebook/ads/redexgen/X/NT;

    .line 54245
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NR;->A00:Lcom/facebook/ads/redexgen/X/NT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NT;->A0Q()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/NR;->A07(Lcom/facebook/ads/redexgen/X/NU;)V

    .line 54246
    const/16 v2, 0x1ce

    const/16 v1, 0xe

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/NR;->A0R(Z)V

    .line 54247
    const/16 v2, 0x28c

    const/16 v1, 0xd

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/NR;->A0D(Z)V

    .line 54248
    const/16 v2, 0x299

    const/16 v1, 0x14

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/NR;->A0E(Z)V

    .line 54249
    return-void
.end method

.method public final A0P(Lorg/json/JSONObject;)V
    .locals 4

    .line 54250
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/NR;->A00:Lcom/facebook/ads/redexgen/X/NT;

    const/16 v2, 0x1f6

    const/16 v1, 0x14

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/NT;->A0N(Z)Lcom/facebook/ads/redexgen/X/NT;

    .line 54251
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NR;->A00:Lcom/facebook/ads/redexgen/X/NT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NT;->A0Q()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/NR;->A07(Lcom/facebook/ads/redexgen/X/NU;)V

    .line 54252
    return-void
.end method

.method public final A0Q(Lorg/json/JSONObject;)V
    .locals 4

    .line 54253
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/NR;->A00:Lcom/facebook/ads/redexgen/X/NT;

    const/16 v2, 0x337

    const/16 v1, 0x12

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/NT;->A0G(I)Lcom/facebook/ads/redexgen/X/NT;

    .line 54254
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/NR;->A00:Lcom/facebook/ads/redexgen/X/NT;

    const/16 v2, 0x1f6

    const/16 v1, 0x14

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/NT;->A0N(Z)Lcom/facebook/ads/redexgen/X/NT;

    .line 54255
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/NR;->A00:Lcom/facebook/ads/redexgen/X/NT;

    .line 54256
    const/16 v2, 0x2cb

    const/16 v1, 0x14

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 54257
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/NT;->A0P(Z)Lcom/facebook/ads/redexgen/X/NT;

    .line 54258
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NR;->A00:Lcom/facebook/ads/redexgen/X/NT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NT;->A0Q()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/NR;->A07(Lcom/facebook/ads/redexgen/X/NU;)V

    .line 54259
    const/16 v2, 0x28c

    const/16 v1, 0xd

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/NR;->A0D(Z)V

    .line 54260
    return-void
.end method

.method public final A0R(Z)V
    .locals 0

    .line 54261
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/NR;->A07:Z

    .line 54262
    return-void
.end method

.method public final A0S()Z
    .locals 1

    .line 54263
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/NR;->A07:Z

    return v0
.end method

.method public final A0T()Z
    .locals 1

    .line 54264
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/NR;->A08:Z

    return v0
.end method

.method public final A0U()Z
    .locals 5

    .line 54265
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/NR;->A01:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0V()Z
    .locals 1

    .line 54266
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/NR;->A09:Z

    return v0
.end method

.method public final A0W()Z
    .locals 1

    .line 54267
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/NR;->A0B:Z

    return v0
.end method
