.class public abstract Lcom/facebook/ads/redexgen/X/Kn;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Km;,
        Lcom/facebook/ads/redexgen/X/Kj;,
        Lcom/facebook/ads/redexgen/X/Ki;,
        Lcom/facebook/ads/redexgen/X/Kk;,
        Lcom/facebook/ads/androidx/media3/extractor/text/webvtt/WebvttCueParser$TextAlignment;
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:Ljava/util/regex/Pattern;

.field public static final A03:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final A04:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final A05:Ljava/util/regex/Pattern;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 936
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "6VJGxYRVGzkOFylAWqo"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "TQDRStRjVTcp84EAqriMHD1W"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Y0YMWliml1c9R0RakThzWHnpZrTCSrBu"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "hjS3TiOTsIfHHkhXtOFrFHFAaycKEbQY"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "GvjOo5wC83Psjizly91M8Dr7lGNbFkes"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "VFbjP0ZwmY6IK0pKGb7V8NSJj5u1SgyV"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "T0F9FjreghpLds1JHOV1Zh8xCqpA0ysb"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "F9ZBXP7xE9Rr53rKOaE"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Kn;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Kn;->A0F()V

    const/16 v2, 0xbb

    const/16 v1, 0x1a

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Kn;->A02:Ljava/util/regex/Pattern;

    .line 937
    const/4 v2, 0x3

    const/16 v1, 0xc

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Kn;->A05:Ljava/util/regex/Pattern;

    .line 938
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 939
    .local v0, "defaultColors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/16 v6, 0xff

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0x1b8

    const/4 v1, 0x5

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    const/4 v5, 0x0

    invoke-static {v5, v6, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0x15d

    const/4 v1, 0x4

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    invoke-static {v5, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0x12c

    const/4 v1, 0x4

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    invoke-static {v6, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0x195

    const/4 v1, 0x3

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    invoke-static {v6, v6, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0x1bd

    const/4 v1, 0x6

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    invoke-static {v6, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0x17c

    const/4 v1, 0x7

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    invoke-static {v5, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0x121

    const/4 v1, 0x4

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0x11c

    const/4 v1, 0x5

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Kn;->A04:Ljava/util/Map;

    .line 948
    .end local v0    # "defaultColors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 949
    .local v0, "defaultBackgroundColors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0x10b

    const/16 v1, 0x8

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    invoke-static {v5, v6, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0xf4

    const/4 v1, 0x7

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    invoke-static {v5, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0xed

    const/4 v1, 0x7

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    invoke-static {v6, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0x105

    const/4 v1, 0x6

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    invoke-static {v6, v6, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0x113

    const/16 v1, 0x9

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    invoke-static {v6, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0xfb

    const/16 v1, 0xa

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    invoke-static {v5, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0xe6

    const/4 v1, 0x7

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0xde

    const/16 v1, 0x8

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Kn;->A03:Ljava/util/Map;

    .line 958
    .end local v0    # "defaultBackgroundColors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    return-void
.end method

.method public static A00(III)I
    .locals 1

    .line 48370
    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    .line 48371
    return p0

    .line 48372
    :cond_0
    if-eq p1, v0, :cond_1

    .line 48373
    return p1

    .line 48374
    :cond_1
    if-eq p2, v0, :cond_2

    .line 48375
    return p2

    .line 48376
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static A01(Ljava/lang/String;)I
    .locals 8

    .line 48377
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 48378
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x45

    const/16 v1, 0x16

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xa7

    const/16 v1, 0xf

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 48379
    const/high16 v0, -0x80000000

    return v0

    .line 48380
    :sswitch_0
    const/16 v2, 0x1a9

    const/4 v1, 0x5

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const/16 v2, 0x130

    const/4 v1, 0x3

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    const/16 v4, 0x183

    const/4 v3, 0x6

    sget-object v1, Lcom/facebook/ads/redexgen/X/Kn;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Kn;->A01:[Ljava/lang/String;

    const-string v1, "zDr3pXiReOD9C2voGl4pNyTssnTsthj2"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/16 v0, 0x6e

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const/16 v2, 0x126

    const/4 v1, 0x6

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_0

    .line 48381
    :pswitch_0
    return v7

    .line 48382
    :pswitch_1
    return v6

    .line 48383
    :pswitch_2
    return v5

    .line 48384
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_3
        -0x4009266b -> :sswitch_2
        0x188db -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static A02(Ljava/lang/String;)I
    .locals 6

    .line 48385
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 48386
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x45

    const/16 v1, 0x16

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xa7

    const/16 v1, 0xf

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 48387
    const/high16 v0, -0x80000000

    return v0

    .line 48388
    :sswitch_0
    const/16 v2, 0x1a9

    const/4 v1, 0x5

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const/16 v2, 0x130

    const/4 v1, 0x3

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_2
    const/16 v2, 0x183

    const/4 v1, 0x6

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_3
    const/16 v2, 0x16e

    const/16 v1, 0xa

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_4
    const/16 v2, 0x126

    const/4 v1, 0x6

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_0

    :sswitch_5
    const/16 v2, 0x165

    const/16 v1, 0x9

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 48389
    :pswitch_0
    return v5

    .line 48390
    :pswitch_1
    return v4

    .line 48391
    :pswitch_2
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6dd215c0 -> :sswitch_5
        -0x514d33ab -> :sswitch_4
        -0x4c1a40fd -> :sswitch_3
        -0x4009266b -> :sswitch_2
        0x188db -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static A03(Ljava/lang/String;)I
    .locals 8

    .line 48392
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x2

    sparse-switch v0, :sswitch_data_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 48393
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2c

    const/16 v1, 0x19

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xa7

    const/16 v1, 0xf

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 48394
    return v4

    .line 48395
    :sswitch_0
    const/16 v2, 0x1a9

    const/4 v1, 0x5

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const/16 v2, 0x198

    const/4 v1, 0x5

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_2
    const/16 v2, 0x159

    const/4 v1, 0x4

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_3
    const/16 v2, 0x130

    const/4 v1, 0x3

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_4
    const/16 v2, 0x183

    const/4 v1, 0x6

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_5
    const/16 v2, 0x126

    const/4 v1, 0x6

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_0

    .line 48396
    :pswitch_0
    return v7

    .line 48397
    :pswitch_1
    return v6

    .line 48398
    :pswitch_2
    return v4

    .line 48399
    :pswitch_3
    return v5

    .line 48400
    :pswitch_4
    return v3

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_5
        -0x4009266b -> :sswitch_4
        0x188db -> :sswitch_3
        0x32a007 -> :sswitch_2
        0x677c21c -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static A04(Ljava/lang/String;)I
    .locals 4

    .line 48401
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 48402
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x12

    const/16 v1, 0x1a

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xa7

    const/16 v1, 0xf

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 48403
    const/high16 v0, -0x80000000

    return v0

    .line 48404
    :sswitch_0
    const/16 v2, 0x19d

    const/4 v1, 0x2

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const/16 v2, 0x178

    const/4 v1, 0x2

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 48405
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 48406
    :pswitch_1
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        0xd86 -> :sswitch_1
        0xe3a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static A05(Ljava/lang/String;I)I
    .locals 2

    .line 48407
    const/16 v0, 0x3e

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 48408
    .local v0, "index":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    goto :goto_0
.end method

.method public static A06(Ljava/util/List;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Kj;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Kb;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Kj;",
            ")I"
        }
    .end annotation

    .line 48409
    .local p3, "styles":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/text/webvtt/WebvttCssStyle;>;"
    invoke-static {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Kn;->A0E(Ljava/util/List;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Kj;)Ljava/util/List;

    move-result-object p2

    .line 48410
    .local v0, "styleMatches":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;>;"
    const/4 p1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 p0, -0x1

    if-ge p1, v0, :cond_1

    .line 48411
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Kk;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Kk;->A01:Lcom/facebook/ads/redexgen/X/Kb;

    .line 48412
    .local p0, "style":Lcom/facebook/ads/redexgen/X/Kb;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Kb;->A07()I

    move-result v0

    if-eq v0, p0, :cond_0

    .line 48413
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Kb;->A07()I

    move-result v0

    return v0

    .line 48414
    .end local p0    # "style":Lcom/facebook/ads/redexgen/X/Kb;
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 48415
    .end local v1    # "i":I
    :cond_1
    return p0
.end method

.method public static A07(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannedString;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Kb;",
            ">;)",
            "Landroid/text/SpannedString;"
        }
    .end annotation

    .line 48416
    .local p8, "styles":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/text/webvtt/WebvttCssStyle;>;"
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 48417
    .local v3, "spannedText":Landroid/text/SpannableStringBuilder;
    new-instance v5, Ljava/util/ArrayDeque;

    invoke-direct {v5}, Ljava/util/ArrayDeque;-><init>()V

    .line 48418
    .local v4, "startTagStack":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/facebook/ads/androidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;>;"
    const/4 v4, 0x0

    .line 48419
    .local v5, "pos":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 48420
    .local v6, "nestedElements":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/text/webvtt/WebvttCueParser$Element;>;"
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    sget-object v1, Lcom/facebook/ads/redexgen/X/Kn;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x5a

    if-eq v1, v0, :cond_15

    sget-object v2, Lcom/facebook/ads/redexgen/X/Kn;->A01:[Ljava/lang/String;

    const-string v1, "AeTA9zfG0TGme9BEKFHCyzeTODloAdj0"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ge v4, v7, :cond_13

    .line 48421
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 48422
    .local v7, "curr":C
    sparse-switch v2, :sswitch_data_0

    .line 48423
    invoke-virtual {v6, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 48424
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 48425
    :sswitch_0
    add-int/lit8 v1, v4, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 48426
    add-int/lit8 v4, v4, 0x1

    .line 48427
    goto :goto_0

    .line 48428
    :cond_1
    move v2, v4

    .line 48429
    .local v8, "ltPos":I
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v10, 0x0

    const/16 v1, 0x2f

    const/4 v7, 0x1

    if-ne v0, v1, :cond_6

    const/4 v9, 0x1

    .line 48430
    .local v9, "isClosingTag":Z
    :goto_1
    add-int/lit8 v0, v2, 0x1

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A05(Ljava/lang/String;I)I

    move-result v4

    .line 48431
    add-int/lit8 v0, v4, -0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_2

    const/4 v10, 0x1

    .line 48432
    .local v10, "isVoidTag":Z
    :cond_2
    if-eqz v9, :cond_3

    const/4 v7, 0x2

    :cond_3
    add-int/2addr v7, v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Kn;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Kn;->A01:[Ljava/lang/String;

    const-string v1, "RmddLkS1dXQ96i0rYlSMmYhsPXo1tsUj"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "bXvTM6kBQx9RsuQ7PFPuWtENxJrNvh3v"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v10, :cond_5

    :goto_2
    add-int/lit8 v0, v4, -0x2

    :goto_3
    invoke-virtual {p1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 48433
    .local p0, "fullTagExpression":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    :cond_4
    if-eqz v10, :cond_5

    goto :goto_2

    .line 48434
    :cond_5
    add-int/lit8 v0, v4, -0x1

    goto :goto_3

    .line 48435
    :cond_6
    const/4 v9, 0x0

    goto :goto_1

    .line 48436
    :cond_7
    invoke-static {v8}, Lcom/facebook/ads/redexgen/X/Kn;->A0D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 48437
    .local p1, "tagName":Ljava/lang/String;
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/Kn;->A0O(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    .line 48438
    :cond_8
    if-eqz v9, :cond_d

    .line 48439
    :cond_9
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_0

    .line 48440
    :cond_a
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/ads/redexgen/X/Kj;

    .line 48441
    .local p2, "startTag":Lcom/facebook/ads/redexgen/X/Kj;
    invoke-static {p0, v8, v3, v6, p2}, Lcom/facebook/ads/redexgen/X/Kn;->A0K(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Kj;Ljava/util/List;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V

    .line 48442
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 48443
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .end local v5    # "pos":I
    .local p5, "pos":I
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ki;

    invoke-direct {v0, v8, v2, v1}, Lcom/facebook/ads/redexgen/X/Ki;-><init>(Lcom/facebook/ads/redexgen/X/Kj;ILcom/facebook/ads/redexgen/X/Kg;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48444
    :goto_4
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/Kj;->A01:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_0

    .line 48445
    .end local p5
    .restart local v5    # "pos":I
    :cond_b
    sget-object v1, Lcom/facebook/ads/redexgen/X/Kn;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_c

    .end local v5    # "pos":I
    .restart local p5
    sget-object v2, Lcom/facebook/ads/redexgen/X/Kn;->A01:[Ljava/lang/String;

    const-string v1, "6LBQPk5FkDk3NWAQRRtmrnBQ3lB0BSgu"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_4

    .end local v5
    .restart local p5
    :cond_c
    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_4

    .line 48446
    .end local p2    # "startTag":Lcom/facebook/ads/redexgen/X/Kj;
    .end local p5
    .restart local v5    # "pos":I
    .end local v5    # "pos":I
    .restart local p5
    :cond_d
    if-nez v10, :cond_0

    .line 48447
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    sget-object v1, Lcom/facebook/ads/redexgen/X/Kn;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x61

    if-eq v1, v0, :cond_e

    sget-object v2, Lcom/facebook/ads/redexgen/X/Kn;->A01:[Ljava/lang/String;

    const-string v1, "wdDtpexUk8e3MYkSHhs"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "WrocTxwzP1SCyFuF7cP"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-static {v8, v7}, Lcom/facebook/ads/redexgen/X/Kj;->A01(Ljava/lang/String;I)Lcom/facebook/ads/redexgen/X/Kj;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_e
    invoke-static {v8, v7}, Lcom/facebook/ads/redexgen/X/Kj;->A01(Ljava/lang/String;I)Lcom/facebook/ads/redexgen/X/Kj;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 48448
    .end local p5
    .restart local v5    # "pos":I
    .restart local v7    # "curr":C
    :sswitch_1
    add-int/lit8 v1, v4, 0x1

    const/16 v0, 0x3b

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 48449
    .local v8, "semiColonEndIndex":I
    add-int/lit8 v1, v4, 0x1

    const/16 v0, 0x20

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 48450
    .local v9, "spaceEndIndex":I
    const/4 v0, -0x1

    if-ne v7, v0, :cond_10

    .line 48451
    move v7, v1

    .line 48452
    .local p0, "entityEndIndex":I
    :goto_5
    if-eq v7, v0, :cond_12

    .line 48453
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p1, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/facebook/ads/redexgen/X/Kn;->A0J(Ljava/lang/String;Landroid/text/SpannableStringBuilder;)V

    .line 48454
    if-ne v7, v1, :cond_f

    .line 48455
    const/4 v2, 0x1

    const/4 v1, 0x1

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 48456
    :cond_f
    add-int/lit8 v4, v7, 0x1

    goto/16 :goto_0

    .line 48457
    :cond_10
    if-ne v1, v0, :cond_11

    goto :goto_5

    .line 48458
    :cond_11
    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto :goto_5

    .line 48459
    :cond_12
    invoke-virtual {v6, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 48460
    add-int/lit8 v4, v4, 0x1

    .line 48461
    goto/16 :goto_0

    .line 48462
    :cond_13
    :goto_6
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 48463
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Kj;

    invoke-static {p0, v0, v3, v6, p2}, Lcom/facebook/ads/redexgen/X/Kn;->A0K(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Kj;Ljava/util/List;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V

    goto :goto_6

    .line 48464
    :cond_14
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Kj;->A00()Lcom/facebook/ads/redexgen/X/Kj;

    move-result-object v1

    .line 48465
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 48466
    invoke-static {p0, v1, v0, v6, p2}, Lcom/facebook/ads/redexgen/X/Kn;->A0K(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Kj;Ljava/util/List;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V

    .line 48467
    invoke-static {v6}, Landroid/text/SpannedString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannedString;

    move-result-object v0

    return-object v0

    :cond_15
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x26 -> :sswitch_1
        0x3c -> :sswitch_0
    .end sparse-switch
.end method

.method public static A08(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/3o;
    .locals 1

    .line 48468
    new-instance v0, Lcom/facebook/ads/redexgen/X/Km;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Km;-><init>()V

    .line 48469
    .local v0, "builder":Lcom/facebook/ads/redexgen/X/Km;
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0L(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Km;)V

    .line 48470
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Km;->A07()Lcom/facebook/ads/redexgen/X/3o;

    move-result-object v0

    return-object v0
.end method

.method public static A09(Ljava/lang/CharSequence;)Lcom/facebook/ads/redexgen/X/pT;
    .locals 1

    .line 48471
    new-instance v0, Lcom/facebook/ads/redexgen/X/Km;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Km;-><init>()V

    .line 48472
    .local v0, "infoBuilder":Lcom/facebook/ads/redexgen/X/Km;
    iput-object p0, v0, Lcom/facebook/ads/redexgen/X/Km;->A0A:Ljava/lang/CharSequence;

    .line 48473
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Km;->A07()Lcom/facebook/ads/redexgen/X/3o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3o;->A0H()Lcom/facebook/ads/redexgen/X/pT;

    move-result-object v0

    return-object v0
.end method

.method public static A0A(Lcom/facebook/ads/redexgen/X/4v;Ljava/util/List;)Lcom/facebook/ads/redexgen/X/Kf;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/4v;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Kb;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/Kf;"
        }
    .end annotation

    .line 48474
    .local p2, "styles":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/text/webvtt/WebvttCssStyle;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0T()Ljava/lang/String;

    move-result-object v3

    .line 48475
    .local v0, "firstLine":Ljava/lang/String;
    const/4 v2, 0x0

    if-nez v3, :cond_0

    .line 48476
    return-object v2

    .line 48477
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kn;->A02:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 48478
    .local v2, "cueHeaderMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48479
    invoke-static {v2, v1, p0, p1}, Lcom/facebook/ads/redexgen/X/Kn;->A0B(Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/facebook/ads/redexgen/X/4v;Ljava/util/List;)Lcom/facebook/ads/redexgen/X/Kf;

    move-result-object v0

    return-object v0

    .line 48480
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0T()Ljava/lang/String;

    move-result-object v1

    .line 48481
    .local v3, "secondLine":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 48482
    return-object v2

    .line 48483
    :cond_2
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kn;->A02:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 48484
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 48485
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, p0, p1}, Lcom/facebook/ads/redexgen/X/Kn;->A0B(Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/facebook/ads/redexgen/X/4v;Ljava/util/List;)Lcom/facebook/ads/redexgen/X/Kf;

    move-result-object v0

    return-object v0

    .line 48486
    :cond_3
    return-object v2
.end method

.method public static A0B(Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/facebook/ads/redexgen/X/4v;Ljava/util/List;)Lcom/facebook/ads/redexgen/X/Kf;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Matcher;",
            "Lcom/facebook/ads/redexgen/X/4v;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Kb;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/Kf;"
        }
    .end annotation

    .line 48487
    .local p0, "styles":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/text/webvtt/WebvttCssStyle;>;"
    new-instance v3, Lcom/facebook/ads/redexgen/X/Km;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/Km;-><init>()V

    .line 48488
    .local v0, "builder":Lcom/facebook/ads/redexgen/X/Km;
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ko;->A01(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/facebook/ads/redexgen/X/Km;->A09:J

    .line 48489
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ko;->A01(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/facebook/ads/redexgen/X/Km;->A08:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48490
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Kn;->A0L(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Km;)V

    .line 48491
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 48492
    .local v1, "textBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4v;->A0T()Ljava/lang/String;

    move-result-object v6

    .line 48493
    .local v2, "line":Ljava/lang/String;
    :goto_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/Kn;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x68

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Kn;->A01:[Ljava/lang/String;

    const-string v1, "2AwiW2AhFaTR"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-nez v5, :cond_1

    .line 48494
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 48495
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48496
    :cond_0
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48497
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4v;->A0T()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 48498
    .end local v2    # "line":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p3}, Lcom/facebook/ads/redexgen/X/Kn;->A07(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannedString;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/Km;->A0A:Ljava/lang/CharSequence;

    .line 48499
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Km;->A08()Lcom/facebook/ads/redexgen/X/Kf;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 48500
    .end local v1    # "textBuilder":Ljava/lang/StringBuilder;
    .local v1, "e":Ljava/lang/NumberFormatException;
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x75

    const/16 v1, 0x1e

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xa7

    const/16 v1, 0xf

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 48501
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A0C(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Kn;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x6

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0D(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 48502
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 48503
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 48504
    const/16 v2, 0xb6

    const/4 v1, 0x5

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/5C;->A1P(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    aget-object v0, v1, v0

    return-object v0
.end method

.method public static A0E(Ljava/util/List;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Kj;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Kb;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Kj;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Kk;",
            ">;"
        }
    .end annotation

    .line 48505
    .local p0, "declaredStyles":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/text/webvtt/WebvttCssStyle;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 48506
    .local v0, "applicableStyles":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;>;"
    const/4 v5, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_1

    .line 48507
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/Kb;

    .line 48508
    .local v2, "style":Lcom/facebook/ads/redexgen/X/Kb;
    iget-object v2, p2, Lcom/facebook/ads/redexgen/X/Kj;->A01:Ljava/lang/String;

    iget-object v1, p2, Lcom/facebook/ads/redexgen/X/Kj;->A03:Ljava/util/Set;

    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/Kj;->A02:Ljava/lang/String;

    invoke-virtual {v4, p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kb;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)I

    move-result v1

    .line 48509
    .local v3, "score":I
    if-lez v1, :cond_0

    .line 48510
    new-instance v0, Lcom/facebook/ads/redexgen/X/Kk;

    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/redexgen/X/Kk;-><init>(ILcom/facebook/ads/redexgen/X/Kb;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48511
    .end local v2    # "style":Lcom/facebook/ads/redexgen/X/Kb;
    .end local v3    # "score":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 48512
    .end local v1    # "i":I
    :cond_1
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Kn;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x5a

    if-eq v1, v0, :cond_2

    .line 48513
    sget-object v2, Lcom/facebook/ads/redexgen/X/Kn;->A01:[Ljava/lang/String;

    const-string v1, "10DtqaDx3Mjis7pngfRsmCfeCaw0vB2Q"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-object v3

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0F()V
    .locals 1

    const/16 v0, 0x1c3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Kn;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x51t
        0x0t
        0x55t
        0x44t
        0x30t
        0x3ft
        0x47t
        0x53t
        0x45t
        0x56t
        0x44t
        0x30t
        0x3ft
        0x47t
        0x45t
        0x0t
        0x6at
        0x76t
        0x33t
        0x14t
        0xct
        0x1bt
        0x16t
        0x13t
        0x1et
        0x5at
        0x5dt
        0xct
        0x1ft
        0x8t
        0xet
        0x13t
        0x19t
        0x1bt
        0x16t
        0x5dt
        0x5at
        0xct
        0x1bt
        0x16t
        0xft
        0x1ft
        0x40t
        0x5at
        0x3ft
        0x18t
        0x0t
        0x17t
        0x1at
        0x1ft
        0x12t
        0x56t
        0x17t
        0x1at
        0x1ft
        0x11t
        0x18t
        0x1bt
        0x13t
        0x18t
        0x2t
        0x56t
        0x0t
        0x17t
        0x1at
        0x3t
        0x13t
        0x4ct
        0x56t
        0x52t
        0x75t
        0x6dt
        0x7at
        0x77t
        0x72t
        0x7ft
        0x3bt
        0x7at
        0x75t
        0x78t
        0x73t
        0x74t
        0x69t
        0x3bt
        0x6dt
        0x7at
        0x77t
        0x6et
        0x7et
        0x21t
        0x3bt
        0x2et
        0x16t
        0x14t
        0xdt
        0xdt
        0x14t
        0x13t
        0x1at
        0x5dt
        0x1ft
        0x1ct
        0x19t
        0x5dt
        0x1et
        0x8t
        0x18t
        0x5dt
        0xet
        0x18t
        0x9t
        0x9t
        0x14t
        0x13t
        0x1at
        0x47t
        0x5dt
        0x3ft
        0x7t
        0x5t
        0x1ct
        0x1ct
        0x5t
        0x2t
        0xbt
        0x4ct
        0xft
        0x19t
        0x9t
        0x4ct
        0x1bt
        0x5t
        0x18t
        0x4t
        0x4ct
        0xet
        0xdt
        0x8t
        0x4ct
        0x4t
        0x9t
        0xdt
        0x8t
        0x9t
        0x1et
        0x56t
        0x4ct
        0x35t
        0xet
        0xbt
        0xet
        0xft
        0x17t
        0xet
        0x40t
        0x3t
        0x15t
        0x5t
        0x40t
        0x13t
        0x5t
        0x14t
        0x14t
        0x9t
        0xet
        0x7t
        0x40t
        0xat
        0x38t
        0x3ft
        0x2bt
        0x29t
        0x29t
        0x1et
        0x28t
        0x38t
        0xdt
        0x3ct
        0x2ft
        0x2et
        0x38t
        0x2ft
        0x28t
        0x53t
        0x2ft
        0x5dt
        0x2et
        0x7bt
        0xdt
        0x79t
        0x76t
        0xet
        0xct
        0x79t
        0x56t
        0xet
        0x8t
        0x8t
        0x1bt
        0x79t
        0x56t
        0xet
        0xdt
        0x79t
        0x76t
        0xet
        0xct
        0xdt
        0xbt
        0xft
        0xct
        0x1at
        0x1t
        0x51t
        0x5ct
        0x59t
        0x57t
        0x5et
        0xat
        0x6t
        0x1bt
        0x2dt
        0x5dt
        0x58t
        0x60t
        0x5dt
        0x53t
        0x5et
        0x5ct
        0x54t
        0x4t
        0x1t
        0x39t
        0x4t
        0xat
        0x13t
        0x3t
        0x77t
        0x72t
        0x4at
        0x76t
        0x6ct
        0x74t
        0x7bt
        0x76t
        0x73t
        0x4bt
        0x78t
        0x7dt
        0x79t
        0x71t
        0x7t
        0x2t
        0x3at
        0x8t
        0x4t
        0x2t
        0x0t
        0xbt
        0x11t
        0x4t
        0x27t
        0x22t
        0x1at
        0x37t
        0x20t
        0x21t
        0x40t
        0x45t
        0x7dt
        0x55t
        0x4at
        0x4bt
        0x56t
        0x47t
        0x5bt
        0x5et
        0x66t
        0x40t
        0x5ct
        0x55t
        0x55t
        0x56t
        0x4et
        0x6t
        0x8t
        0x5t
        0x7t
        0xft
        0xft
        0x1t
        0x18t
        0x8t
        0x7t
        0x65t
        0x63t
        0x68t
        0x72t
        0x63t
        0x74t
        0x7t
        0x1dt
        0x5t
        0xat
        0x75t
        0x7et
        0x74t
        0x41t
        0x52t
        0x0t
        0x3t
        0xdt
        0x4t
        0x5t
        0x18t
        0x3t
        0x4t
        0xdt
        0x4at
        0x1ft
        0x4t
        0x19t
        0x1ft
        0x1at
        0x1at
        0x5t
        0x18t
        0x1et
        0xft
        0xet
        0x4at
        0xft
        0x4t
        0x1et
        0x3t
        0x1et
        0x13t
        0x50t
        0x4at
        0x4dt
        0x4ct
        0x5at
        0x57t
        0x58t
        0x51t
        0x45t
        0x4ct
        0x4ft
        0x5dt
        0x6bt
        0x6et
        0x6at
        0x62t
        0x41t
        0x44t
        0x43t
        0x48t
        0x23t
        0x26t
        0x21t
        0x2at
        0x62t
        0x23t
        0x2at
        0x29t
        0x3bt
        0x71t
        0x74t
        0x73t
        0x78t
        0x30t
        0x6ft
        0x74t
        0x7at
        0x75t
        0x69t
        0x6at
        0x74t
        0x71t
        0x69t
        0x4ft
        0x43t
        0x45t
        0x47t
        0x4ct
        0x56t
        0x43t
        0x5t
        0x1t
        0xct
        0xct
        0x4t
        0xdt
        0x35t
        0x39t
        0x28t
        0x2bt
        0x1dt
        0x2t
        0x1et
        0x4t
        0x19t
        0x4t
        0x2t
        0x3t
        0x49t
        0x5et
        0x5ft
        0x54t
        0x4ft
        0x41t
        0x4et
        0x52t
        0x25t
        0x3bt
        0x45t
        0x43t
        0x7t
        0x0t
        0x17t
        0xct
        0x56t
        0x4ct
        0x5ft
        0x40t
        0x0t
        0x7t
        0x12t
        0x1t
        0x7t
        0x6et
        0x7ct
        0x2ct
        0x3ft
        0x28t
        0x2et
        0x33t
        0x39t
        0x3bt
        0x36t
        0x44t
        0x5bt
        0x5at
        0x47t
        0x56t
        0x34t
        0x28t
        0x21t
        0x21t
        0x22t
        0x3at
    .end array-data
.end method

.method public static A0G(Landroid/text/SpannableStringBuilder;Lcom/facebook/ads/redexgen/X/Kb;II)V
    .locals 5

    .line 48514
    if-nez p1, :cond_0

    .line 48515
    return-void

    .line 48516
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Kb;->A08()I

    move-result v1

    const/4 v0, -0x1

    const/16 v3, 0x21

    if-eq v1, v0, :cond_1

    .line 48517
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Kb;->A08()I

    move-result v1

    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 48518
    invoke-static {p0, v0, p2, p3, v3}, Lcom/facebook/ads/redexgen/X/3t;->A00(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 48519
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Kb;->A0S()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48520
    new-instance v0, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v0}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {p0, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 48521
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Kb;->A0T()Z

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Kn;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x5a

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/redexgen/X/Kn;->A01:[Ljava/lang/String;

    const-string v1, "1YLI45HvZzSZe2yut9V0MUcCwjpGC5gE"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v4, :cond_3

    .line 48522
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p0, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 48523
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Kb;->A0R()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 48524
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Kb;->A05()I

    move-result v1

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 48525
    invoke-static {p0, v0, p2, p3, v3}, Lcom/facebook/ads/redexgen/X/3t;->A00(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 48526
    :cond_4
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Kb;->A0Q()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 48527
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Kb;->A04()I

    move-result v1

    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 48528
    invoke-static {p0, v0, p2, p3, v3}, Lcom/facebook/ads/redexgen/X/3t;->A00(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 48529
    :cond_5
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Kb;->A0K()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 48530
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Kb;->A0K()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/text/style/TypefaceSpan;

    invoke-direct {v0, v1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 48531
    invoke-static {p0, v0, p2, p3, v3}, Lcom/facebook/ads/redexgen/X/3t;->A00(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 48532
    :cond_6
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Kb;->A06()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 48533
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Kb;->A0P()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 48534
    new-instance v0, Lcom/facebook/ads/redexgen/X/pQ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/pQ;-><init>()V

    invoke-virtual {p0, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 48535
    :cond_7
    return-void

    .line 48536
    :pswitch_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Kb;->A03()F

    move-result v1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr v1, v0

    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 48537
    invoke-static {p0, v0, p2, p3, v3}, Lcom/facebook/ads/redexgen/X/3t;->A00(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 48538
    goto :goto_0

    .line 48539
    :pswitch_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Kb;->A03()F

    move-result v1

    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 48540
    invoke-static {p0, v0, p2, p3, v3}, Lcom/facebook/ads/redexgen/X/3t;->A00(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 48541
    goto :goto_0

    .line 48542
    :pswitch_2
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Kb;->A03()F

    move-result v0

    float-to-int v2, v0

    const/4 v1, 0x1

    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v0, v2, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 48543
    invoke-static {p0, v0, p2, p3, v3}, Lcom/facebook/ads/redexgen/X/3t;->A00(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 48544
    goto :goto_0

    .line 48545
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static A0H(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Kj;Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Kj;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Ki;",
            ">;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Kb;",
            ">;)V"
        }
    .end annotation

    .line 48546
    .local p9, "nestedElements":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/text/webvtt/WebvttCueParser$Element;>;"
    .local p10, "styles":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/text/webvtt/WebvttCssStyle;>;"
    invoke-static {p4, p1, p2}, Lcom/facebook/ads/redexgen/X/Kn;->A06(Ljava/util/List;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Kj;)I

    move-result v6

    .line 48547
    .local v4, "rubyTagPosition":I
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 48548
    .local v5, "sortedNestedElements":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/text/webvtt/WebvttCueParser$Element;>;"
    invoke-interface {v5, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 48549
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ki;->A03()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 48550
    const/4 v9, 0x0

    .line 48551
    .local v7, "deletedCharCount":I
    iget v8, p2, Lcom/facebook/ads/redexgen/X/Kj;->A00:I

    .line 48552
    .local v8, "lastRubyTextEnd":I
    const/4 v7, 0x0

    .local v9, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 48553
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ki;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ki;->A02(Lcom/facebook/ads/redexgen/X/Ki;)Lcom/facebook/ads/redexgen/X/Kj;

    move-result-object v0

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Kj;->A01:Ljava/lang/String;

    const/16 v2, 0x19f

    const/4 v1, 0x2

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48554
    .end local p0    # null:Landroid/text/SpannableStringBuilder;
    .end local p1    # null:Ljava/lang/String;
    .end local p2    # null:Lcom/facebook/ads/redexgen/X/Kj;
    .end local p3    # null:Ljava/util/List;
    .end local p4    # null:Ljava/util/List;
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 48555
    :cond_0
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Ki;

    .line 48556
    .local p0, "rubyTextElement":Lcom/facebook/ads/redexgen/X/Ki;
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Ki;->A02(Lcom/facebook/ads/redexgen/X/Ki;)Lcom/facebook/ads/redexgen/X/Kj;

    move-result-object v0

    invoke-static {p4, p1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A06(Ljava/util/List;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Kj;)I

    move-result v1

    .line 48557
    const/4 v0, 0x1

    invoke-static {v1, v6, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A00(III)I

    move-result v4

    .line 48558
    .local p1, "rubyPosition":I
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Ki;->A02(Lcom/facebook/ads/redexgen/X/Ki;)Lcom/facebook/ads/redexgen/X/Kj;

    move-result-object v0

    iget v3, v0, Lcom/facebook/ads/redexgen/X/Kj;->A00:I

    sub-int/2addr v3, v9

    .line 48559
    .local p2, "adjustedRubyTextStart":I
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Ki;->A00(Lcom/facebook/ads/redexgen/X/Ki;)I

    move-result v0

    sub-int/2addr v0, v9

    .line 48560
    .local p3, "adjustedRubyTextEnd":I
    invoke-virtual {p0, v3, v0}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 48561
    .local p4, "rubyText":Ljava/lang/CharSequence;
    invoke-virtual {p0, v3, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 48562
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/pP;

    invoke-direct {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/pP;-><init>(Ljava/lang/String;I)V

    .line 48563
    const/16 v0, 0x21

    invoke-virtual {p0, v1, v8, v3, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 48564
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/2addr v9, v0

    .line 48565
    move v8, v3

    goto :goto_1

    .line 48566
    .end local v9    # "i":I
    :cond_1
    return-void
.end method

.method public static A0I(Landroid/text/SpannableStringBuilder;Ljava/util/Set;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 48567
    .local v6, "classes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 48568
    .local v1, "className":Ljava/lang/String;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kn;->A04:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const/16 v3, 0x21

    sget-object v1, Lcom/facebook/ads/redexgen/X/Kn;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Kn;->A01:[Ljava/lang/String;

    const-string v1, "YNIn8hUAyZDjSH3JhERqEXsouXgj93JS"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v5, :cond_1

    .line 48569
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kn;->A04:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 48570
    .local v2, "color":I
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p0, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .end local v2    # "color":I
    goto :goto_0

    .line 48571
    :cond_1
    sget-object v5, Lcom/facebook/ads/redexgen/X/Kn;->A03:Ljava/util/Map;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Kn;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x5a

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Kn;->A01:[Ljava/lang/String;

    const-string v1, "z1JdxX10iLj514Di1TKQv9nGlpU0X7eV"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48572
    :goto_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kn;->A03:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 48573
    .restart local v2    # "color":I
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {p0, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_2
    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 48574
    :cond_4
    return-void
.end method

.method public static A0J(Ljava/lang/String;Landroid/text/SpannableStringBuilder;)V
    .locals 4

    .line 48575
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 48576
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x136

    const/16 v1, 0x1f

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x10

    const/4 v1, 0x2

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xa7

    const/16 v1, 0xf

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 48577
    :goto_1
    return-void

    .line 48578
    :pswitch_0
    const/16 v0, 0x26

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 48579
    goto :goto_1

    .line 48580
    :pswitch_1
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 48581
    goto :goto_1

    .line 48582
    :pswitch_2
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 48583
    goto :goto_1

    .line 48584
    :pswitch_3
    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 48585
    goto :goto_1

    .line 48586
    :sswitch_0
    const/16 v2, 0x189

    const/4 v1, 0x4

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const/16 v2, 0xda

    const/4 v1, 0x3

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Kn;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x68

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Kn;->A01:[Ljava/lang/String;

    const-string v1, "0e7ADHSVMy4QvuNOaRsoWPMCToECBQOy"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "0jhJvpoe9graGazv1ZIcpM6WWqxYTLD3"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_0

    :sswitch_2
    const/16 v2, 0x133

    const/4 v1, 0x2

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Kn;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Kn;->A01:[Ljava/lang/String;

    const-string v1, "Z6Yq6aysKH1bmBhKZFPJxCKyS02If"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_3
    const/16 v2, 0x17a

    const/4 v1, 0x2

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xced -> :sswitch_2
        0xd88 -> :sswitch_3
        0x179c4 -> :sswitch_1
        0x337f11 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static A0K(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Kj;Ljava/util/List;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Kj;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Ki;",
            ">;",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Kb;",
            ">;)V"
        }
    .end annotation

    .line 48587
    .local p0, "nestedElements":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/text/webvtt/WebvttCueParser$Element;>;"
    .local p2, "styles":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/text/webvtt/WebvttCssStyle;>;"
    iget v4, p1, Lcom/facebook/ads/redexgen/X/Kj;->A00:I

    .line 48588
    .local v0, "start":I
    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 48589
    .local v1, "end":I
    iget-object v7, p1, Lcom/facebook/ads/redexgen/X/Kj;->A01:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v6, 0x2

    const/4 v5, 0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    const/16 v1, 0x21

    packed-switch v0, :pswitch_data_0

    .line 48590
    return-void

    .line 48591
    :sswitch_0
    const/16 v2, 0x1a1

    const/4 v1, 0x4

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    sget-object v2, Lcom/facebook/ads/redexgen/X/Kn;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Kn;->A01:[Ljava/lang/String;

    const-string v1, "p1tLKUYj0fLqnT8dJpZfHw2ryYMkTMQB"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v7, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const/16 v2, 0x155

    const/4 v1, 0x4

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_2
    const/16 v2, 0x1af

    const/4 v1, 0x1

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_3
    const/16 v2, 0x1ae

    const/4 v1, 0x1

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const/16 v2, 0x135

    const/4 v1, 0x1

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_5
    const/16 v2, 0x125

    const/4 v1, 0x1

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_0

    :sswitch_6
    const/16 v2, 0xdd

    const/4 v1, 0x1

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_0

    :sswitch_7
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_0

    .line 48592
    :pswitch_0
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Kj;->A03:Ljava/util/Set;

    invoke-static {p3, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Kn;->A0I(Landroid/text/SpannableStringBuilder;Ljava/util/Set;II)V

    .line 48593
    goto :goto_1

    .line 48594
    :pswitch_1
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p3, v0, v4, v3, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 48595
    goto :goto_1

    .line 48596
    :pswitch_2
    invoke-static {p3, p0, p1, p2, p4}, Lcom/facebook/ads/redexgen/X/Kn;->A0H(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Kj;Ljava/util/List;Ljava/util/List;)V

    .line 48597
    goto :goto_1

    .line 48598
    :pswitch_3
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p3, v0, v4, v3, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 48599
    goto :goto_1

    .line 48600
    :pswitch_4
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p3, v0, v4, v3, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 48601
    :goto_1
    :pswitch_5
    invoke-static {p4, p0, p1}, Lcom/facebook/ads/redexgen/X/Kn;->A0E(Ljava/util/List;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Kj;)Ljava/util/List;

    move-result-object v2

    .line 48602
    .local v2, "applicableStyles":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;>;"
    const/4 v1, 0x0

    .local v3, "i":I
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 48603
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Kk;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Kk;->A01:Lcom/facebook/ads/redexgen/X/Kb;

    invoke-static {p3, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Kn;->A0G(Landroid/text/SpannableStringBuilder;Lcom/facebook/ads/redexgen/X/Kb;II)V

    .line 48604
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 48605
    .end local v3    # "i":I
    :cond_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_7
        0x62 -> :sswitch_6
        0x63 -> :sswitch_5
        0x69 -> :sswitch_4
        0x75 -> :sswitch_3
        0x76 -> :sswitch_2
        0x3291ee -> :sswitch_1
        0x3595da -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static A0L(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Km;)V
    .locals 7

    .line 48606
    const/16 v2, 0xa7

    const/16 v1, 0xf

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/facebook/ads/redexgen/X/Kn;->A05:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 48607
    .local v1, "cueSettingMatcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 48608
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Kn;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Kn;->A01:[Ljava/lang/String;

    const-string v1, "IuLRiWa83LmFflMS6GnqXQo4BkpBDAaM"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    check-cast v5, Ljava/lang/String;

    .line 48609
    .local v2, "name":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 48610
    .local v3, "value":Ljava/lang/String;
    :try_start_0
    const/16 v6, 0x161

    const/4 v2, 0x4

    const/16 v1, 0x2b

    invoke-static {v6, v2, v1}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48611
    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/Kn;->A0M(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Km;)V

    goto :goto_0

    .line 48612
    :cond_0
    const/16 v6, 0xd5

    const/4 v2, 0x5

    const/16 v1, 0x36

    invoke-static {v6, v2, v1}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48613
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Kn;->A03(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/facebook/ads/redexgen/X/Km;->A06:I

    goto :goto_0

    .line 48614
    :cond_1
    const/16 v6, 0x18d

    const/16 v2, 0x8

    const/16 v1, 0x6b

    invoke-static {v6, v2, v1}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 48615
    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/Kn;->A0N(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Km;)V

    goto :goto_0

    .line 48616
    :cond_2
    const/16 v6, 0x1a5

    const/4 v2, 0x4

    const/16 v1, 0x23

    invoke-static {v6, v2, v1}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 48617
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ko;->A00(Ljava/lang/String;)F

    move-result v0

    iput v0, p1, Lcom/facebook/ads/redexgen/X/Km;->A02:F

    goto/16 :goto_0

    .line 48618
    :cond_3
    const/16 v6, 0x1b0

    const/16 v2, 0x8

    const/16 v1, 0x5c

    invoke-static {v6, v2, v1}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 48619
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Kn;->A04(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/facebook/ads/redexgen/X/Km;->A07:I

    goto/16 :goto_0

    .line 48620
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x93

    const/16 v2, 0x14

    const/16 v1, 0x66

    invoke-static {v6, v2, v1}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v5, 0xf

    const/4 v2, 0x1

    const/16 v1, 0x3c

    invoke-static {v5, v2, v1}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48621
    .local v4, "e":Ljava/lang/NumberFormatException;
    :catch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5b

    const/16 v1, 0x1a

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 48622
    :cond_6
    return-void
.end method

.method public static A0M(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Km;)V
    .locals 4

    .line 48623
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 48624
    .local v0, "commaIndex":I
    const/4 v0, -0x1

    const/4 v3, 0x0

    if-eq v1, v0, :cond_0

    .line 48625
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Kn;->A01(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/facebook/ads/redexgen/X/Km;->A03:I

    .line 48626
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 48627
    :cond_0
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48628
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Ko;->A00(Ljava/lang/String;)F

    move-result v0

    iput v0, p1, Lcom/facebook/ads/redexgen/X/Km;->A00:F

    .line 48629
    iput v3, p1, Lcom/facebook/ads/redexgen/X/Km;->A04:I

    .line 48630
    :goto_0
    return-void

    .line 48631
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p1, Lcom/facebook/ads/redexgen/X/Km;->A00:F

    .line 48632
    const/4 v0, 0x1

    iput v0, p1, Lcom/facebook/ads/redexgen/X/Km;->A04:I

    goto :goto_0
.end method

.method public static A0N(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Km;)V
    .locals 2

    .line 48633
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 48634
    .local v0, "commaIndex":I
    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    .line 48635
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Kn;->A02(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/facebook/ads/redexgen/X/Km;->A05:I

    .line 48636
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 48637
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Ko;->A00(Ljava/lang/String;)F

    move-result v0

    iput v0, p1, Lcom/facebook/ads/redexgen/X/Km;->A01:F

    .line 48638
    return-void
.end method

.method public static A0O(Ljava/lang/String;)Z
    .locals 7

    .line 48639
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v6, 0x0

    const/4 v5, 0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 48640
    return v6

    .line 48641
    :sswitch_0
    const/16 v2, 0x1a1

    const/4 v1, 0x4

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_1
    const/16 v2, 0x155

    const/4 v1, 0x4

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    const/16 v4, 0x19f

    const/4 v3, 0x2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Kn;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x5a

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Kn;->A01:[Ljava/lang/String;

    const-string v1, "3Lkw1PxTKRAL7UJ3iME"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "Pvn03sQd9gQ2SLf9pLX"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/16 v0, 0x31

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_3
    const/16 v4, 0x1af

    const/4 v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Kn;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x5a

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Kn;->A01:[Ljava/lang/String;

    const-string v1, "nN5IyC8pDtxjsjNmobfqstup1YpOndtX"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/16 v0, 0xc

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    const/4 v0, 0x7

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Kn;->A01:[Ljava/lang/String;

    const-string v1, "d0efHOF5zOPljB40"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x6

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :sswitch_4
    const/16 v2, 0x1ae

    const/4 v1, 0x1

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_0

    :sswitch_5
    const/16 v2, 0x135

    const/4 v1, 0x1

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Kn;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Kn;->A01:[Ljava/lang/String;

    const-string v1, "lfhFeDS1O2o1uIM0aOGK2jmnN5o1ZQFy"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "gZA4cz0ExJhogJKpMVDSuYGHtyxwi0jr"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_0

    :sswitch_6
    const/16 v2, 0x125

    const/4 v1, 0x1

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_7
    const/16 v2, 0xdd

    const/4 v1, 0x1

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 48642
    :pswitch_0
    return v5

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x62 -> :sswitch_7
        0x63 -> :sswitch_6
        0x69 -> :sswitch_5
        0x75 -> :sswitch_4
        0x76 -> :sswitch_3
        0xe42 -> :sswitch_2
        0x3291ee -> :sswitch_1
        0x3595da -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
