.class public final Lcom/facebook/ads/redexgen/X/Tx;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A0F:[B

.field public static final A0G:Lcom/facebook/ads/internal/protocol/AdPlacementType;

.field public static final A0H:Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:I

.field public A08:I

.field public A09:I

.field public A0A:I

.field public A0B:Lcom/facebook/ads/internal/protocol/AdPlacementType;

.field public A0C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/internal/dto/AdCookieData;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public A0D:Z

.field public final A0E:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1902
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Tx;->A02()V

    const-class v0, Lcom/facebook/ads/redexgen/X/Tx;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Tx;->A0H:Ljava/lang/String;

    .line 1903
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->UNKNOWN:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    sput-object v0, Lcom/facebook/ads/redexgen/X/Tx;->A0G:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 66288
    .local p2, "placementData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66289
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Tx;->A01:I

    .line 66290
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Tx;->A00:I

    .line 66291
    sget-object v0, Lcom/facebook/ads/redexgen/X/Tx;->A0G:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Tx;->A0B:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    .line 66292
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Tx;->A03:I

    .line 66293
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Tx;->A0A:I

    .line 66294
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Tx;->A04:I

    .line 66295
    const/16 v0, 0x14

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Tx;->A05:I

    .line 66296
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Tx;->A08:I

    .line 66297
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Tx;->A09:I

    .line 66298
    const/16 v0, 0x2710

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Tx;->A06:I

    .line 66299
    const/16 v4, 0xc8

    iput v4, p0, Lcom/facebook/ads/redexgen/X/Tx;->A07:I

    .line 66300
    const/16 v0, 0xe10

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Tx;->A02:I

    .line 66301
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Tx;->A0D:Z

    .line 66302
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Tx;->A0C:Ljava/util/List;

    .line 66303
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Tx;->A0E:J

    .line 66304
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 66305
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 66306
    :pswitch_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Tx;->A06:I

    .line 66307
    goto :goto_0

    .line 66308
    :pswitch_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Tx;->A09:I

    .line 66309
    goto :goto_0

    .line 66310
    :pswitch_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Tx;->A08:I

    .line 66311
    goto :goto_0

    .line 66312
    :pswitch_3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Tx;->A00:I

    .line 66313
    goto :goto_0

    .line 66314
    :pswitch_4
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Tx;->A01:I

    .line 66315
    goto :goto_0

    .line 66316
    :pswitch_5
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Tx;->A0D:Z

    .line 66317
    goto :goto_0

    .line 66318
    :pswitch_6
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Tx;->A02:I

    .line 66319
    goto :goto_0

    .line 66320
    :pswitch_7
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Tx;->A05:I

    .line 66321
    goto/16 :goto_0

    .line 66322
    :pswitch_8
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Tx;->A04:I

    .line 66323
    goto/16 :goto_0

    .line 66324
    :pswitch_9
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Tx;->A0A:I

    .line 66325
    goto/16 :goto_0

    .line 66326
    :pswitch_a
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Tx;->A03:I

    .line 66327
    goto/16 :goto_0

    .line 66328
    :pswitch_b
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->fromString(Ljava/lang/String;)Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Tx;->A0B:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    .line 66329
    goto/16 :goto_0

    .line 66330
    :pswitch_c
    :try_start_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Tx;->A07:I

    goto/16 :goto_0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66331
    .local v6, "e":Ljava/lang/NumberFormatException;
    :catch_0
    iput v4, p0, Lcom/facebook/ads/redexgen/X/Tx;->A07:I

    .line 66332
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_0

    .line 66333
    :sswitch_0
    const/16 v2, 0x53

    const/16 v1, 0xf

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tx;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_1
    const/16 v2, 0x43

    const/16 v1, 0x10

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tx;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_2
    const/16 v2, 0xa8

    const/16 v1, 0x1f

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tx;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_3
    const/16 v2, 0x62

    const/4 v1, 0x7

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tx;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_4
    const/16 v2, 0x8d

    const/16 v1, 0x1b

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tx;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_5
    const/16 v2, 0xe1

    const/16 v1, 0x18

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tx;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_6
    const/16 v2, 0x29

    const/16 v1, 0x1a

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tx;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_1

    :sswitch_7
    const/16 v2, 0x89

    const/4 v1, 0x4

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tx;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :sswitch_8
    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tx;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_9
    const/16 v2, 0x9

    const/16 v1, 0x20

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tx;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_a
    const/16 v2, 0x7a

    const/16 v1, 0xf

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tx;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_b
    const/16 v2, 0xc7

    const/16 v1, 0x1a

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tx;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_c
    const/16 v2, 0x69

    const/16 v1, 0x11

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tx;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    .line 66334
    :cond_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5d1423f9 -> :sswitch_c
        -0x3311a54a -> :sswitch_b
        -0x2b4a184f -> :sswitch_a
        -0x25d25571 -> :sswitch_9
        -0x20f94c24 -> :sswitch_8
        0x368f3a -> :sswitch_7
        0x29c58cc1 -> :sswitch_6
        0x332da93b -> :sswitch_5
        0x3ad0882f -> :sswitch_4
        0x40b292db -> :sswitch_3
        0x468b8977 -> :sswitch_2
        0x599f5fc1 -> :sswitch_1
        0x775623ec -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_c
    .end packed-switch
.end method

.method public static A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/Tx;
    .locals 4
    .param p0    # Lorg/json/JSONObject;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 66335
    if-nez p0, :cond_0

    .line 66336
    const/4 v0, 0x0

    return-object v0

    .line 66337
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 66338
    .local v0, "definitionIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 66339
    .local v1, "definitionParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66340
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 66341
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 66342
    .local v3, "val":Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66343
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "val":Ljava/lang/Object;
    goto :goto_0

    .line 66344
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/Tx;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/Tx;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Tx;->A0F:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x2e

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0xf9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Tx;->A0F:[B

    return-void

    :array_0
    .array-data 1
        0x43t
        0x41t
        0x43t
        0x48t
        0x45t
        0x41t
        0x42t
        0x4ct
        0x45t
        0x5dt
        0x5at
        0x42t
        0x55t
        0x58t
        0x5dt
        0x50t
        0x55t
        0x40t
        0x5dt
        0x5bt
        0x5at
        0x6bt
        0x50t
        0x41t
        0x46t
        0x55t
        0x40t
        0x5dt
        0x5bt
        0x5at
        0x6bt
        0x5dt
        0x5at
        0x6bt
        0x47t
        0x51t
        0x57t
        0x5bt
        0x5at
        0x50t
        0x47t
        0x4t
        0x0t
        0x7t
        0x36t
        0x1ft
        0x0t
        0xct
        0x1et
        0x8t
        0xbt
        0x0t
        0x5t
        0x0t
        0x1dt
        0x10t
        0x36t
        0x19t
        0xct
        0x1bt
        0xat
        0xct
        0x7t
        0x1dt
        0x8t
        0xet
        0xct
        0x6t
        0x1at
        0x17t
        0x15t
        0x13t
        0x1bt
        0x13t
        0x18t
        0x2t
        0x29t
        0x1et
        0x13t
        0x1ft
        0x11t
        0x1et
        0x2t
        0x6at
        0x76t
        0x7bt
        0x79t
        0x7ft
        0x77t
        0x7ft
        0x74t
        0x6et
        0x45t
        0x6dt
        0x73t
        0x7et
        0x6et
        0x72t
        0x72t
        0x65t
        0x66t
        0x72t
        0x65t
        0x73t
        0x68t
        0x79t
        0x6et
        0x6dt
        0x79t
        0x6et
        0x78t
        0x63t
        0x54t
        0x7ft
        0x63t
        0x79t
        0x6et
        0x78t
        0x63t
        0x64t
        0x67t
        0x6ft
        0x7ct
        0x6bt
        0x7ft
        0x7bt
        0x6bt
        0x7dt
        0x7at
        0x51t
        0x7at
        0x67t
        0x63t
        0x6bt
        0x61t
        0x7bt
        0x7at
        0x78t
        0x75t
        0x7ct
        0x69t
        0x17t
        0x8t
        0x5t
        0x4t
        0xet
        0x3et
        0x15t
        0x8t
        0xct
        0x4t
        0x3et
        0x11t
        0xet
        0xdt
        0xdt
        0x8t
        0xft
        0x6t
        0x3et
        0x8t
        0xft
        0x15t
        0x4t
        0x13t
        0x17t
        0x0t
        0xdt
        0x71t
        0x6et
        0x62t
        0x70t
        0x66t
        0x65t
        0x6et
        0x6bt
        0x6et
        0x73t
        0x7et
        0x58t
        0x64t
        0x6ft
        0x62t
        0x64t
        0x6ct
        0x58t
        0x6et
        0x69t
        0x6et
        0x73t
        0x6et
        0x66t
        0x6bt
        0x58t
        0x63t
        0x62t
        0x6bt
        0x66t
        0x7et
        0x56t
        0x49t
        0x45t
        0x57t
        0x41t
        0x42t
        0x49t
        0x4ct
        0x49t
        0x54t
        0x59t
        0x7ft
        0x43t
        0x48t
        0x45t
        0x43t
        0x4bt
        0x7ft
        0x49t
        0x4et
        0x54t
        0x45t
        0x52t
        0x56t
        0x41t
        0x4ct
        0x2ft
        0x30t
        0x3ct
        0x2et
        0x38t
        0x3bt
        0x30t
        0x35t
        0x30t
        0x2dt
        0x20t
        0x6t
        0x3at
        0x31t
        0x3ct
        0x3at
        0x32t
        0x6t
        0x2dt
        0x30t
        0x3at
        0x32t
        0x3ct
        0x2bt
    .end array-data
.end method


# virtual methods
.method public final A03()I
    .locals 1

    .line 66345
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Tx;->A02:I

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public final A04()I
    .locals 1

    .line 66346
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Tx;->A03:I

    return v0
.end method

.method public final A05()I
    .locals 1

    .line 66347
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Tx;->A06:I

    return v0
.end method

.method public final A06()I
    .locals 1

    .line 66348
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Tx;->A07:I

    return v0
.end method

.method public final A07()I
    .locals 1

    .line 66349
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Tx;->A08:I

    return v0
.end method

.method public final A08()I
    .locals 1

    .line 66350
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Tx;->A09:I

    return v0
.end method

.method public final A09()I
    .locals 1

    .line 66351
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Tx;->A0A:I

    return v0
.end method

.method public final A0A()J
    .locals 2

    .line 66352
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Tx;->A04:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    return-wide v0
.end method

.method public final A0B()J
    .locals 2

    .line 66353
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Tx;->A05:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    return-wide v0
.end method

.method public final A0C()J
    .locals 2

    .line 66354
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Tx;->A0E:J

    return-wide v0
.end method

.method public final A0D()Lcom/facebook/ads/internal/protocol/AdPlacementType;
    .locals 1

    .line 66355
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tx;->A0B:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    return-object v0
.end method

.method public final A0E()Z
    .locals 1

    .line 66356
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Tx;->A0D:Z

    return v0
.end method
