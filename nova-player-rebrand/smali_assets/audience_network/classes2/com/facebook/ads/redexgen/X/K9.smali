.class public final Lcom/facebook/ads/redexgen/X/K9;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/KC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Overrides"
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;

.field public static final A04:Ljava/util/regex/Pattern;

.field public static final A05:Ljava/util/regex/Pattern;

.field public static final A06:Ljava/util/regex/Pattern;

.field public static final A07:Ljava/util/regex/Pattern;


# instance fields
.field public final A00:I

.field public final A01:Landroid/graphics/PointF;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 858
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "HuWf33fpJVnWiQs5jgU1coBxnkVs6NRv"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "s99wI42TXu9zb6TF"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "znB4eml4mMdVjhFim0h8Ic"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "vwm3UU3z6IIrXLlJTF572ZAqfrELMHnc"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "3Hoi8QCDYq5dLz7zrQI8B3P9CeceMza0"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "88mhCIZfB8fBAcvooczZpqGcVMp3sArj"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "twULWMK01HtAAxLhlSW3WXsxhxQi2bS3"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "0mJGu"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/K9;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/K9;->A05()V

    const/16 v2, 0xc6

    const/16 v1, 0xb

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/K9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/K9;->A05:Ljava/util/regex/Pattern;

    .line 859
    const/4 v6, 0x1

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v2, 0xb3

    const/16 v1, 0x13

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/K9;->A03(III)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 860
    const/16 v2, 0x9d

    const/16 v1, 0x16

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/K9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/5C;->A0n(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/K9;->A07:Ljava/util/regex/Pattern;

    .line 861
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v4, v3, v5

    .line 862
    const/16 v2, 0x6d

    const/16 v1, 0x30

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/K9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/5C;->A0n(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 863
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/K9;->A06:Ljava/util/regex/Pattern;

    .line 864
    const/16 v2, 0x64

    const/16 v1, 0x9

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/K9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/K9;->A04:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(ILandroid/graphics/PointF;)V
    .locals 0

    .line 45148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45149
    iput p1, p0, Lcom/facebook/ads/redexgen/X/K9;->A00:I

    .line 45150
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/K9;->A01:Landroid/graphics/PointF;

    .line 45151
    return-void
.end method

.method public static A00(Ljava/lang/String;)I
    .locals 4

    .line 45152
    sget-object v0, Lcom/facebook/ads/redexgen/X/K9;->A04:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 45153
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45154
    const/4 v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/K9;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/K9;->A03:[Ljava/lang/String;

    const-string v1, "vLvehkH4B3ak8JU9onbvIk"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KC;->A03(Ljava/lang/String;)I

    move-result v0

    .line 45155
    :goto_0
    return v0

    .line 45156
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01(Ljava/lang/String;)Landroid/graphics/PointF;
    .locals 7

    .line 45157
    sget-object v0, Lcom/facebook/ads/redexgen/X/K9;->A07:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 45158
    .local v0, "positionMatcher":Ljava/util/regex/Matcher;
    sget-object v0, Lcom/facebook/ads/redexgen/X/K9;->A06:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 45159
    .local v1, "moveMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    .line 45160
    .local v2, "hasPosition":Z
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    .line 45161
    .local v3, "hasMove":Z
    const/4 v4, 0x2

    const/4 v6, 0x1

    if-eqz v1, :cond_1

    .line 45162
    if-eqz v0, :cond_0

    .line 45163
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    const/16 v1, 0x51

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/K9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/K9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x52

    const/16 v1, 0x12

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/K9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/4g;->A06(Ljava/lang/String;Ljava/lang/String;)V

    .line 45164
    :cond_0
    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 45165
    .local v5, "x":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 45166
    .local v4, "y":Ljava/lang/String;
    .restart local v4    # "y":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 45167
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 45168
    return-object v0

    .line 45169
    .end local v4    # "y":Ljava/lang/String;
    .end local v5    # "x":Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_2

    .line 45170
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 45171
    .restart local v5    # "x":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 45172
    .end local v4
    .end local v5    # "x":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A02(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/K9;
    .locals 6

    .line 45173
    const/4 v4, -0x1

    .line 45174
    .local v0, "alignment":I
    const/4 v3, 0x0

    .line 45175
    .local v1, "position":Landroid/graphics/PointF;
    sget-object v0, Lcom/facebook/ads/redexgen/X/K9;->A05:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 45176
    .local v2, "matcher":Ljava/util/regex/Matcher;
    :catch_0
    :cond_0
    :goto_0
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/K9;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/K9;->A03:[Ljava/lang/String;

    const-string v1, "4wlmcdEyXnPZaqMgrsXq3d"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz p0, :cond_2

    .line 45177
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/K9;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/K9;->A03:[Ljava/lang/String;

    const-string v1, "M6jPqZAMoTJlOEJJxCI750"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 45178
    .local v3, "braceContents":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/K9;->A01(Ljava/lang/String;)Landroid/graphics/PointF;

    move-result-object v1

    .line 45179
    .local v4, "parsedPosition":Landroid/graphics/PointF;
    if-eqz v1, :cond_1

    .line 45180
    move-object v3, v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 45181
    :catch_1
    :cond_1
    :try_start_1
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/K9;->A00(Ljava/lang/String;)I

    move-result v1

    .line 45182
    .local v4, "parsedAlignment":I
    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    .line 45183
    move v4, v1

    goto :goto_0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 45184
    :cond_2
    new-instance v0, Lcom/facebook/ads/redexgen/X/K9;

    invoke-direct {v0, v4, v3}, Lcom/facebook/ads/redexgen/X/K9;-><init>(ILandroid/graphics/PointF;)V

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/K9;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0xd

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A04(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 45185
    sget-object v0, Lcom/facebook/ads/redexgen/X/K9;->A05:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/K9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0xd1

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/K9;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x47t
        0x7ct
        0x45t
        0x56t
        0x41t
        0x41t
        0x5at
        0x57t
        0x56t
        0x13t
        0x5bt
        0x52t
        0x40t
        0x13t
        0x51t
        0x5ct
        0x47t
        0x5bt
        0x13t
        0x6ft
        0x43t
        0x5ct
        0x40t
        0x1bt
        0x4bt
        0x1ft
        0x4at
        0x1at
        0x13t
        0x52t
        0x5dt
        0x57t
        0x13t
        0x6ft
        0x5et
        0x5ct
        0x45t
        0x56t
        0x1bt
        0x4bt
        0x2t
        0x1ft
        0x4at
        0x2t
        0x1ft
        0x4bt
        0x1t
        0x1ft
        0x4at
        0x1t
        0x1at
        0x8t
        0x13t
        0x46t
        0x40t
        0x5at
        0x5dt
        0x54t
        0x13t
        0x6ft
        0x43t
        0x5ct
        0x40t
        0x13t
        0x45t
        0x52t
        0x5ft
        0x46t
        0x56t
        0x40t
        0x1dt
        0x13t
        0x5ct
        0x45t
        0x56t
        0x41t
        0x41t
        0x5at
        0x57t
        0x56t
        0xet
        0x14t
        0x2dt
        0xdt
        0x1ft
        0x2dt
        0xat
        0x7t
        0x12t
        0x1bt
        0x50t
        0x31t
        0x8t
        0x1bt
        0xct
        0xct
        0x17t
        0x1at
        0x1bt
        0xdt
        0x1ct
        0x1ct
        0x21t
        0x2et
        0x68t
        0x1ct
        0x24t
        0x6bt
        0x69t
        0xft
        0xft
        0x3et
        0x3ct
        0x25t
        0x36t
        0xft
        0x7bt
        0x76t
        0x62t
        0x77t
        0x20t
        0x7ft
        0x76t
        0x62t
        0x77t
        0x20t
        0x7ft
        0x7bt
        0x76t
        0x62t
        0x77t
        0x20t
        0x7at
        0x7ft
        0x7bt
        0x76t
        0x62t
        0x77t
        0x20t
        0x7at
        0x7bt
        0x6ct
        0x69t
        0x7ft
        0x76t
        0x62t
        0x77t
        0x20t
        0x7ft
        0x76t
        0x62t
        0x77t
        0x20t
        0x7at
        0x6ct
        0xft
        0x7at
        0x41t
        0x41t
        0x6dt
        0x72t
        0x6et
        0x41t
        0x35t
        0x35t
        0x38t
        0x2ct
        0x39t
        0x6et
        0x34t
        0x31t
        0x35t
        0x38t
        0x2ct
        0x39t
        0x6et
        0x34t
        0x41t
        0x34t
        0x38t
        0x17t
        0x4et
        0x38t
        0x0t
        0x4ft
        0x4ct
        0x5bt
        0x5et
        0x38t
        0x4at
        0x38t
        0x0t
        0x4ft
        0x4dt
        0x5bt
        0x38t
        0x17t
        0x4et
        0x46t
        0x61t
        0x32t
        0x41t
        0x44t
        0x67t
        0x47t
        0x30t
        0x33t
        0x46t
        0x67t
    .end array-data
.end method
