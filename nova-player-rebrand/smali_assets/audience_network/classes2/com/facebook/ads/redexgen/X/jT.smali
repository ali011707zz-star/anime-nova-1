.class public final Lcom/facebook/ads/redexgen/X/jT;
.super Lcom/facebook/ads/redexgen/X/NQ;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static A0E:[B = null

.field public static final serialVersionUID:J = 0x340f3fb54e093febL


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:Ljava/lang/String;

.field public A06:Z

.field public A07:Z

.field public A08:Z

.field public A09:Z

.field public A0A:Z

.field public final A0B:Ljava/lang/String;

.field public final A0C:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final A0D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/jd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/jT;->A05()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/jd;",
            ">;)V"
        }
    .end annotation

    .line 88345
    .local v2, "adDataBundlesList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/datamodels/AbstractAdDataBundle;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/NQ;-><init>()V

    .line 88346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jT;->A0C:Ljava/util/ArrayList;

    .line 88347
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jT;->A0A:Z

    .line 88348
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jT;->A07:Z

    .line 88349
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jT;->A06:Z

    .line 88350
    const/16 v2, 0x118

    const/4 v1, 0x2

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jT;->A02(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jT;->A05:Ljava/lang/String;

    .line 88351
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/jT;->A0D:Ljava/util/List;

    .line 88352
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jT;->A0B:Ljava/lang/String;

    .line 88353
    return-void
.end method

.method public static A00(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/gi;)Lcom/facebook/ads/redexgen/X/jT;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 88354
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/jT;->A01(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/gi;Z)Lcom/facebook/ads/redexgen/X/jT;

    move-result-object v0

    return-object v0
.end method

.method public static A01(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/gi;Z)Lcom/facebook/ads/redexgen/X/jT;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 88355
    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jT;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 88356
    .local v0, "ads":Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 88357
    .local v1, "dataBundleList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/datamodels/AbstractAdDataBundle;>;"
    const/4 v1, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 88358
    if-eqz p2, :cond_0

    .line 88359
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/7n;->A00(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/gi;)Lcom/facebook/ads/redexgen/X/7n;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88360
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88361
    :cond_0
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/7l;->A00(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/gi;)Lcom/facebook/ads/redexgen/X/7l;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 88362
    .end local v2    # "i":I
    :cond_1
    new-instance v4, Lcom/facebook/ads/redexgen/X/jT;

    invoke-direct {v4, v5}, Lcom/facebook/ads/redexgen/X/jT;-><init>(Ljava/util/List;)V

    .line 88363
    .local v2, "chainedAdDataBundle":Lcom/facebook/ads/redexgen/X/jT;
    const/4 v2, 0x3

    const/16 v1, 0xc

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jT;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 88364
    .local v3, "chainingParams":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/jT;->A05:Ljava/lang/String;

    .line 88365
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/16 v2, 0xf

    const/16 v1, 0x11

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jT;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/jT;->A01:I

    .line 88366
    const/16 v2, 0x20

    const/16 v1, 0x18

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jT;->A02(III)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/jT;->A04:I

    .line 88367
    const/16 v2, 0x64

    const/16 v1, 0x18

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jT;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/jT;->A02:I

    .line 88368
    const/16 v2, 0x7c

    const/16 v1, 0x16

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jT;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/jT;->A03:I

    .line 88369
    const/16 v2, 0xe2

    const/16 v1, 0x26

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jT;->A02(III)Ljava/lang/String;

    move-result-object v0

    const/4 p0, 0x1

    invoke-virtual {v3, v0, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v4, Lcom/facebook/ads/redexgen/X/jT;->A09:Z

    .line 88370
    const/16 v2, 0xc4

    const/16 v1, 0x1e

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jT;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v4, Lcom/facebook/ads/redexgen/X/jT;->A08:Z

    .line 88371
    const/16 v2, 0x38

    const/16 v1, 0x13

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jT;->A02(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x2

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/jT;->A00:I

    .line 88372
    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/NQ;->A1P(Lorg/json/JSONObject;)V

    .line 88373
    const/16 v2, 0x108

    const/16 v1, 0x10

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jT;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v4, Lcom/facebook/ads/redexgen/X/jT;->A0A:Z

    .line 88374
    const/16 v2, 0xa8

    const/16 v1, 0x1c

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jT;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v4, Lcom/facebook/ads/redexgen/X/jT;->A07:Z

    .line 88375
    const/16 v2, 0x92

    const/16 v1, 0x16

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jT;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v4, Lcom/facebook/ads/redexgen/X/jT;->A06:Z

    .line 88376
    const/16 v2, 0x4b

    const/16 v1, 0x19

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jT;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 88377
    .local v4, "forceTimesJSONArray":Lorg/json/JSONArray;
    if-eqz v3, :cond_2

    .line 88378
    const/4 v2, 0x0

    .local p0, "i":I
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 88379
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/jT;->A0C:Ljava/util/ArrayList;

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONArray;->optInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88380
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 88381
    .end local p0    # "i":I
    :cond_2
    return-object v4
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/jT;->A0E:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x25

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0x11a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/jT;->A0E:[B

    return-void

    :array_0
    .array-data 1
        0x5dt
        0x58t
        0x4ft
        0x75t
        0x7et
        0x77t
        0x7ft
        0x78t
        0x49t
        0x66t
        0x77t
        0x64t
        0x77t
        0x7bt
        0x65t
        0x11t
        0x1at
        0x13t
        0x1bt
        0x1ct
        0x17t
        0x16t
        0x2dt
        0x13t
        0x16t
        0x1t
        0x2dt
        0x11t
        0x1dt
        0x7t
        0x1ct
        0x6t
        0x36t
        0x3dt
        0x34t
        0x3ct
        0x3bt
        0x30t
        0x31t
        0xat
        0x34t
        0x31t
        0x26t
        0xat
        0x38t
        0x34t
        0x2dt
        0xat
        0x31t
        0x20t
        0x27t
        0x34t
        0x21t
        0x3ct
        0x3at
        0x3bt
        0x49t
        0x42t
        0x4bt
        0x43t
        0x44t
        0x4ft
        0x4et
        0x75t
        0x4bt
        0x4et
        0x59t
        0x75t
        0x5ct
        0x4bt
        0x58t
        0x43t
        0x4ft
        0x44t
        0x5et
        0x4at
        0x41t
        0x48t
        0x40t
        0x47t
        0x40t
        0x47t
        0x4et
        0x76t
        0x4ft
        0x46t
        0x5bt
        0x4at
        0x4ct
        0x76t
        0x5ft
        0x40t
        0x4ct
        0x5et
        0x76t
        0x5dt
        0x40t
        0x44t
        0x4ct
        0x5at
        0x6et
        0x65t
        0x6ft
        0x54t
        0x68t
        0x6at
        0x79t
        0x6ft
        0x54t
        0x6at
        0x7et
        0x7ft
        0x64t
        0x54t
        0x68t
        0x67t
        0x64t
        0x78t
        0x6et
        0x54t
        0x7ft
        0x62t
        0x66t
        0x6et
        0x76t
        0x71t
        0x7bt
        0x7at
        0x67t
        0x40t
        0x6bt
        0x70t
        0x40t
        0x6dt
        0x7at
        0x6ft
        0x70t
        0x6dt
        0x6bt
        0x40t
        0x73t
        0x70t
        0x7et
        0x7bt
        0x7at
        0x7bt
        0x41t
        0x56t
        0x43t
        0x5ct
        0x41t
        0x47t
        0x6ct
        0x55t
        0x5at
        0x41t
        0x40t
        0x47t
        0x6ct
        0x56t
        0x50t
        0x43t
        0x5et
        0x6ct
        0x5ct
        0x5dt
        0x5ft
        0x4at
        0xct
        0x1bt
        0xet
        0x11t
        0xct
        0xat
        0x21t
        0x18t
        0x17t
        0xct
        0xdt
        0xat
        0x21t
        0x17t
        0x13t
        0xet
        0xct
        0x1bt
        0xdt
        0xdt
        0x17t
        0x11t
        0x10t
        0x21t
        0x11t
        0x10t
        0x12t
        0x7t
        0x11t
        0xat
        0xdt
        0x15t
        0x3dt
        0x11t
        0x7t
        0x1t
        0xdt
        0xct
        0x6t
        0x3dt
        0x3t
        0x6t
        0x3dt
        0xdt
        0xct
        0x3dt
        0x3t
        0x6t
        0x3dt
        0x10t
        0x7t
        0x12t
        0xdt
        0x10t
        0x16t
        0xbt
        0xct
        0x5t
        0xet
        0x15t
        0x12t
        0xat
        0x22t
        0xet
        0x18t
        0x1et
        0x12t
        0x13t
        0x19t
        0x22t
        0x1ct
        0x19t
        0x22t
        0x12t
        0x13t
        0x22t
        0xbt
        0x14t
        0x19t
        0x18t
        0x12t
        0x22t
        0xdt
        0x11t
        0x1ct
        0x4t
        0x1ft
        0x1ct
        0x1et
        0x16t
        0x22t
        0x18t
        0xft
        0xft
        0x12t
        0xft
        0x3t
        0x0t
        0x1ct
        0x19t
        0x4t
        0x2ft
        0x16t
        0x1ft
        0x2t
        0x13t
        0x15t
        0x2ft
        0x6t
        0x19t
        0x15t
        0x7t
        0x48t
        0x4et
    .end array-data
.end method


# virtual methods
.method public final A0o()I
    .locals 1

    .line 88382
    const/4 v0, 0x2

    return v0
.end method

.method public final A0p()I
    .locals 2

    .line 88383
    iget v1, p0, Lcom/facebook/ads/redexgen/X/jT;->A04:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/jT;->A02:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A22()I
    .locals 1

    .line 88384
    iget v0, p0, Lcom/facebook/ads/redexgen/X/jT;->A00:I

    return v0
.end method

.method public final A23()I
    .locals 1

    .line 88385
    iget v0, p0, Lcom/facebook/ads/redexgen/X/jT;->A01:I

    return v0
.end method

.method public final A24()I
    .locals 1

    .line 88386
    iget v0, p0, Lcom/facebook/ads/redexgen/X/jT;->A02:I

    return v0
.end method

.method public final A25()I
    .locals 1

    .line 88387
    iget v0, p0, Lcom/facebook/ads/redexgen/X/jT;->A03:I

    return v0
.end method

.method public final A26()Lcom/facebook/ads/redexgen/X/jd;
    .locals 2

    .line 88388
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jT;->A0D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88389
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jT;->A0D:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/jd;

    return-object v0

    .line 88390
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A27(I)Lcom/facebook/ads/redexgen/X/jd;
    .locals 1

    .line 88391
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jT;->A0D:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/jd;

    return-object v0
.end method

.method public final A28()Ljava/lang/String;
    .locals 1

    .line 88392
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jT;->A0B:Ljava/lang/String;

    return-object v0
.end method

.method public final A29()Ljava/lang/String;
    .locals 1

    .line 88393
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jT;->A05:Ljava/lang/String;

    return-object v0
.end method

.method public final A2A()Ljava/lang/String;
    .locals 1

    .line 88394
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/jT;->A26()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    .line 88395
    .local v0, "firstAdDataBundle":Lcom/facebook/ads/redexgen/X/jd;
    if-eqz v0, :cond_0

    .line 88396
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 88397
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A2B()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 88398
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jT;->A0C:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final A2C(I)V
    .locals 1

    .line 88399
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jT;->A0D:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 88400
    iget v0, p0, Lcom/facebook/ads/redexgen/X/jT;->A01:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/jT;->A01:I

    .line 88401
    return-void
.end method

.method public final A2D()Z
    .locals 1

    .line 88402
    iget v0, p0, Lcom/facebook/ads/redexgen/X/jT;->A00:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A2E()Z
    .locals 1

    .line 88403
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jT;->A06:Z

    return v0
.end method

.method public final A2F()Z
    .locals 1

    .line 88404
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jT;->A07:Z

    return v0
.end method

.method public final A2G()Z
    .locals 1

    .line 88405
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jT;->A08:Z

    return v0
.end method

.method public final A2H()Z
    .locals 1

    .line 88406
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jT;->A09:Z

    return v0
.end method

.method public final A2I()Z
    .locals 1

    .line 88407
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jT;->A0A:Z

    return v0
.end method

.method public final A2J(I)Z
    .locals 1

    .line 88408
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jT;->A0D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
