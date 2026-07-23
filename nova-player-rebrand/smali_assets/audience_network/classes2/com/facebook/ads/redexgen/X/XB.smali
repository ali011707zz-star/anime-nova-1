.class public abstract Lcom/facebook/ads/redexgen/X/XB;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2262
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "h7TbtU4Y3aavuK2RNDrR490o97xA3UQR"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "nWlFT6gMh83RN55hOK2s7jkd0"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "m7AJmaDY7"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "gyeYb9LWXFqsSrKIVSRt0Co29LGYuhaR"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "EW8hQNBuni4zfziLp651zBZrhIaSPPe"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "twQOenmklhEl"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "GklYvNYuNnGVP8xhiRThcatIgfshVE"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "s31M0lMjYrtgq4OJcDKBiGgiocxpngd"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/XB;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/XB;->A09()V

    return-void
.end method

.method public static A00(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 72140
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 72141
    .local v0, "androidUri":Landroid/net/Uri;
    invoke-static {}, Lcom/facebook/ads/redexgen/X/T7;->A00()Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v0

    .line 72142
    .local v1, "sdkContext":Lcom/facebook/ads/redexgen/X/ge;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A2x(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72143
    return-object v1

    .line 72144
    :cond_0
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/XB;->A0D(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 72145
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/XB;->A01(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 72146
    :cond_1
    invoke-static {p0, v1}, Lcom/facebook/ads/redexgen/X/XB;->A0A(Ljava/lang/String;Landroid/net/Uri;)V

    .line 72147
    return-object v1
.end method

.method public static A01(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    .line 72148
    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72149
    .local v0, "javaUri":Ljava/net/URI;
    invoke-virtual {v2}, Ljava/net/URI;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72150
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/XB;->A03(Ljava/net/URI;)Landroid/net/Uri;

    move-result-object v1

    .line 72151
    .local v1, "androidUri":Landroid/net/Uri;
    invoke-static {p0, v2, v1}, Lcom/facebook/ads/redexgen/X/XB;->A0B(Ljava/lang/String;Ljava/net/URI;Landroid/net/Uri;)V

    .line 72152
    :goto_0
    return-object v1

    .line 72153
    .end local v1    # "androidUri":Landroid/net/Uri;
    :cond_0
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/XB;->A02(Ljava/net/URI;)Landroid/net/Uri;

    move-result-object v1

    .line 72154
    .restart local v1    # "androidUri":Landroid/net/Uri;
    const/4 v0, 0x0

    invoke-static {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XB;->A0C(Ljava/lang/String;Ljava/net/URI;Landroid/net/Uri;Z)V

    goto :goto_0

    .line 72155
    .end local v0    # "javaUri":Ljava/net/URI;
    .end local v1    # "androidUri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 72156
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/XB;->A04(Ljava/lang/String;Ljava/net/URISyntaxException;)Ljava/lang/SecurityException;

    move-result-object v0

    throw v0
.end method

.method public static A02(Ljava/net/URI;)Landroid/net/Uri;
    .locals 2

    .line 72157
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 72158
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 72159
    invoke-virtual {p0}, Ljava/net/URI;->getRawAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 72160
    invoke-virtual {p0}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 72161
    invoke-virtual {p0}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 72162
    invoke-virtual {p0}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->encodedFragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 72163
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 72164
    return-object v0
.end method

.method public static A03(Ljava/net/URI;)Landroid/net/Uri;
    .locals 2

    .line 72165
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 72166
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 72167
    invoke-virtual {p0}, Ljava/net/URI;->getRawSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->encodedOpaquePart(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 72168
    invoke-virtual {p0}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->encodedFragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 72169
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 72170
    return-object v0
.end method

.method public static A04(Ljava/lang/String;Ljava/net/URISyntaxException;)Ljava/lang/SecurityException;
    .locals 5

    .line 72171
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 72172
    invoke-virtual {p1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, v3, v0

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/16 v2, 0x1a

    const/16 v1, 0x24

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XB;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 72173
    return-object v0
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/XB;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x79

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A06(Landroid/net/Uri;)Ljava/net/URI;
    .locals 2

    .line 72174
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 72175
    .local v0, "javaUri":Ljava/net/URI;
    invoke-static {v0, p0}, Lcom/facebook/ads/redexgen/X/XB;->A0F(Ljava/net/URI;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72176
    return-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72177
    :catch_0
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A07(Ljava/lang/String;Landroid/net/Uri;)Ljava/net/URI;
    .locals 8

    .line 72178
    :try_start_0
    new-instance v0, Ljava/net/URI;

    .line 72179
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 72180
    invoke-virtual {p1}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    .line 72181
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 72182
    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result v4

    .line 72183
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 72184
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v6

    .line 72185
    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72186
    return-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72187
    :catch_0
    move-exception v1

    .line 72188
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/XB;->A06(Landroid/net/Uri;)Ljava/net/URI;

    move-result-object v0

    .line 72189
    .local v1, "uri":Ljava/net/URI;
    if-eqz v0, :cond_0

    .line 72190
    return-object v0

    .line 72191
    :cond_0
    invoke-static {p0, v1}, Lcom/facebook/ads/redexgen/X/XB;->A04(Ljava/lang/String;Ljava/net/URISyntaxException;)Ljava/lang/SecurityException;

    move-result-object v0

    throw v0
.end method

.method public static A08(Ljava/lang/String;Landroid/net/Uri;)Ljava/net/URI;
    .locals 4

    .line 72192
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, v3, v2, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72193
    return-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72194
    :catch_0
    move-exception v0

    .line 72195
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/XB;->A04(Ljava/lang/String;Ljava/net/URISyntaxException;)Ljava/lang/SecurityException;

    move-result-object v0

    throw v0
.end method

.method public static A09()V
    .locals 1

    const/16 v0, 0x150

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/XB;->A00:[B

    return-void

    :array_0
    .array-data 1
        0xct
        0x7ft
        0x45t
        0x9t
        0x5et
        0x65t
        0x9t
        0x7et
        0x79t
        0x7ft
        0x45t
        0x9t
        0x5et
        0x65t
        0x9t
        0x7et
        0x14t
        0x9t
        0x1dt
        0xft
        0xat
        0x9t
        0x79t
        0xet
        0xdt
        0x1bt
        0x70t
        0x41t
        0x52t
        0x53t
        0x49t
        0x4et
        0x47t
        0x0t
        0x55t
        0x52t
        0x4ct
        0x0t
        0x5t
        0x53t
        0x0t
        0x43t
        0x41t
        0x55t
        0x53t
        0x45t
        0x44t
        0x0t
        0x45t
        0x58t
        0x43t
        0x45t
        0x50t
        0x54t
        0x49t
        0x4ft
        0x4et
        0x1at
        0x0t
        0x5t
        0x53t
        0xet
        0x37t
        0x48t
        0x43t
        0x54t
        0x43t
        0x2t
        0x57t
        0x50t
        0x4bt
        0x2t
        0x0t
        0x7t
        0x51t
        0x0t
        0x2t
        0x4ct
        0x4dt
        0x56t
        0x2t
        0x47t
        0x53t
        0x57t
        0x43t
        0x4et
        0x2t
        0x56t
        0x4dt
        0x2t
        0x43t
        0x4ct
        0x46t
        0x50t
        0x4dt
        0x4bt
        0x46t
        0x2t
        0x57t
        0x50t
        0x4bt
        0x2t
        0x0t
        0x7t
        0x51t
        0x0t
        0xct
        0x2t
        0x66t
        0x47t
        0x40t
        0x57t
        0x45t
        0x2t
        0x4bt
        0x4ct
        0x44t
        0x4dt
        0x18t
        0x2t
        0x7t
        0x51t
        0xct
        0x2t
        0x6dt
        0x50t
        0x4bt
        0x45t
        0x4bt
        0x4ct
        0x43t
        0x4et
        0x2t
        0x57t
        0x50t
        0x4bt
        0x18t
        0x2t
        0x7t
        0x51t
        0x74t
        0x7ft
        0x68t
        0x7ft
        0x4bt
        0x6ct
        0x77t
        0x3et
        0x7ft
        0x6bt
        0x6at
        0x76t
        0x71t
        0x6ct
        0x77t
        0x6at
        0x67t
        0x24t
        0x3et
        0x3ct
        0x3bt
        0x6dt
        0x3ct
        0x30t
        0x3et
        0x7ft
        0x70t
        0x7at
        0x6ct
        0x71t
        0x77t
        0x7at
        0x4bt
        0x6ct
        0x77t
        0x3et
        0x7ft
        0x6bt
        0x6at
        0x76t
        0x71t
        0x6ct
        0x77t
        0x6at
        0x67t
        0x24t
        0x3et
        0x3ct
        0x3bt
        0x6dt
        0x3ct
        0x30t
        0x33t
        0x38t
        0x2ft
        0x38t
        0xct
        0x2bt
        0x30t
        0x79t
        0x36t
        0x29t
        0x38t
        0x28t
        0x2ct
        0x3ct
        0x79t
        0x29t
        0x38t
        0x2bt
        0x2dt
        0x63t
        0x79t
        0x7bt
        0x7ct
        0x2at
        0x7bt
        0x77t
        0x79t
        0x38t
        0x37t
        0x3dt
        0x2bt
        0x36t
        0x30t
        0x3dt
        0xct
        0x2bt
        0x30t
        0x79t
        0x36t
        0x29t
        0x38t
        0x28t
        0x2ct
        0x3ct
        0x79t
        0x29t
        0x38t
        0x2bt
        0x2dt
        0x63t
        0x79t
        0x7bt
        0x7ct
        0x2at
        0x7bt
        0x77t
        0x23t
        0x28t
        0x3ft
        0x28t
        0x1ct
        0x3bt
        0x20t
        0x69t
        0x39t
        0x28t
        0x3dt
        0x21t
        0x73t
        0x69t
        0x6bt
        0x6ct
        0x3at
        0x6bt
        0x67t
        0x69t
        0x28t
        0x27t
        0x2dt
        0x3bt
        0x26t
        0x20t
        0x2dt
        0x1ct
        0x3bt
        0x20t
        0x69t
        0x39t
        0x28t
        0x3dt
        0x21t
        0x73t
        0x69t
        0x6bt
        0x6ct
        0x3at
        0x6bt
        0x67t
        0x5t
        0xet
        0x19t
        0xet
        0x3at
        0x1dt
        0x6t
        0x4ft
        0x1ct
        0xct
        0x7t
        0xat
        0x2t
        0xat
        0x55t
        0x4ft
        0x4dt
        0x4at
        0x1ct
        0x4dt
        0x41t
        0x4ft
        0xet
        0x1t
        0xbt
        0x1dt
        0x0t
        0x6t
        0xbt
        0x3at
        0x1dt
        0x6t
        0x4ft
        0x1ct
        0xct
        0x7t
        0xat
        0x2t
        0xat
        0x55t
        0x4ft
        0x4dt
        0x4at
        0x1ct
        0x4dt
        0x41t
    .end array-data
.end method

.method public static A0A(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 72196
    invoke-virtual {p1}, Landroid/net/Uri;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72197
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/XB;->A08(Ljava/lang/String;Landroid/net/Uri;)Ljava/net/URI;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/XB;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1e

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 72198
    .end local v0
    :cond_0
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/XB;->A07(Ljava/lang/String;Landroid/net/Uri;)Ljava/net/URI;

    move-result-object v1

    .line 72199
    .restart local v0
    invoke-static {v1, p1}, Lcom/facebook/ads/redexgen/X/XB;->A0F(Ljava/net/URI;Landroid/net/Uri;)Z

    move-result v0

    invoke-static {p0, v1, p1, v0}, Lcom/facebook/ads/redexgen/X/XB;->A0C(Ljava/lang/String;Ljava/net/URI;Landroid/net/Uri;Z)V

    goto :goto_0

    .line 72200
    .local v0, "javaUri":Ljava/net/URI;
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/XB;->A01:[Ljava/lang/String;

    const-string v1, "XZATJK5ui"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {p0, v3, p1}, Lcom/facebook/ads/redexgen/X/XB;->A0B(Ljava/lang/String;Ljava/net/URI;Landroid/net/Uri;)V

    .line 72201
    :goto_0
    return-void
.end method

.method public static A0B(Ljava/lang/String;Ljava/net/URI;Landroid/net/Uri;)V
    .locals 10

    .line 72202
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/XB;->A0E(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 72203
    .local v0, "schemeMatch":Z
    invoke-virtual {p1}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/XB;->A0E(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    .line 72204
    .local v1, "opaquePartMatch":Z
    if-eqz v3, :cond_0

    if-eqz v9, :cond_0

    .line 72205
    return-void

    .line 72206
    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XB;->A05(III)Ljava/lang/String;

    move-result-object v6

    .line 72207
    .local v2, "debugInfo":Ljava/lang/String;
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x2

    if-nez v3, :cond_1

    .line 72208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 72209
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 72210
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v7

    aput-object v0, v3, v8

    .line 72211
    const/16 v2, 0x122

    const/16 v1, 0x2e

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XB;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 72212
    :cond_1
    if-nez v9, :cond_2

    .line 72213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 72214
    invoke-virtual {p1}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 72215
    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v7

    aput-object v0, v3, v8

    .line 72216
    const/16 v2, 0xc0

    const/16 v1, 0x38

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XB;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 72217
    :cond_2
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 72218
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    .line 72219
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/Object;

    aput-object v2, v3, v7

    aput-object v1, v3, v8

    aput-object v6, v3, v5

    const/4 v0, 0x3

    aput-object p0, v3, v0

    .line 72220
    const/16 v2, 0x3f

    const/16 v1, 0x4d

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XB;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A0C(Ljava/lang/String;Ljava/net/URI;Landroid/net/Uri;Z)V
    .locals 12

    .line 72221
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/XB;->A0E(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    .line 72222
    .local v0, "schemeMatch":Z
    invoke-virtual {p1}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/XB;->A0E(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    .line 72223
    .local v1, "authorityMatch":Z
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/XB;->A0E(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    .line 72224
    .local v2, "pathMatch":Z
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XB;->A05(III)Ljava/lang/String;

    move-result-object v6

    .line 72225
    .local v3, "debugInfo":Ljava/lang/String;
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x2

    if-nez v11, :cond_0

    .line 72226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 72227
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 72228
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v7

    aput-object v0, v3, v8

    .line 72229
    const/16 v2, 0x122

    const/16 v1, 0x2e

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XB;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 72230
    :cond_0
    if-nez p3, :cond_1

    if-nez v10, :cond_1

    .line 72231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 72232
    invoke-virtual {p1}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 72233
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v7

    aput-object v0, v3, v8

    .line 72234
    const/16 v2, 0x8c

    const/16 v1, 0x34

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XB;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 72235
    :cond_1
    if-nez v9, :cond_2

    .line 72236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 72237
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 72238
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v7

    aput-object v0, v3, v8

    .line 72239
    const/16 v2, 0xf8

    const/16 v1, 0x2a

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XB;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 72240
    :cond_2
    if-eqz v11, :cond_3

    if-eqz v10, :cond_3

    if-eqz v9, :cond_3

    .line 72241
    return-void

    .line 72242
    :cond_3
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 72243
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    .line 72244
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/Object;

    aput-object v2, v3, v7

    aput-object v1, v3, v8

    aput-object v6, v3, v5

    const/4 v0, 0x3

    aput-object p0, v3, v0

    .line 72245
    const/16 v2, 0x3f

    const/16 v1, 0x4d

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XB;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A0D(Landroid/net/Uri;)Z
    .locals 3

    .line 72246
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 72247
    const/4 v0, 0x1

    return v0

    .line 72248
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    const/16 v1, 0x1a

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XB;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static A0E(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 72249
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XB;->A05(III)Ljava/lang/String;

    move-result-object v1

    if-eqz p0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 72250
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 72251
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static A0F(Ljava/net/URI;Landroid/net/Uri;)Z
    .locals 2

    .line 72252
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    .line 72253
    .local v0, "androidHost":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/16 p0, 0x3e

    const/4 v1, 0x1

    const/16 v0, 0x11

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/XB;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
