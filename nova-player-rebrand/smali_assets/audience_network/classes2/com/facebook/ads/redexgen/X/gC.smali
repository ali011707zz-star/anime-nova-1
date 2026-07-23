.class public abstract Lcom/facebook/ads/redexgen/X/gC;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/gC;->A02()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/gC;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x6a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01([BLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 83133
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 83134
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 83135
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x34

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/gC;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x2at
        0x31t
        0x38t
        0x54t
        0x48t
        0x2ft
        0x14t
        0x1bt
        0x18t
        0x16t
        0x1ft
        0x5at
        0xet
        0x15t
        0x5at
        0x1ct
        0x13t
        0x14t
        0x1et
        0x5at
        0xct
        0x1bt
        0x16t
        0x13t
        0x1et
        0x5at
        0x19t
        0x1ft
        0x8t
        0xet
        0x13t
        0x1ct
        0x13t
        0x19t
        0x1bt
        0xet
        0x1ft
        0x5at
        0x15t
        0x8t
        0x5at
        0xat
        0xft
        0x18t
        0x16t
        0x13t
        0x19t
        0x5at
        0x11t
        0x1ft
        0x3t
        0x54t
    .end array-data
.end method

.method public static A03(Ljavax/net/ssl/HttpsURLConnection;Ljava/util/Set;Ljava/util/Set;)V
    .locals 6
    .param p0    # Ljavax/net/ssl/HttpsURLConnection;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/util/Set;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/HttpsURLConnection;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 83136
    .local p4, "certificates":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p5, "publicKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gC;->A00(III)Ljava/lang/String;

    move-result-object v5

    .line 83137
    :try_start_0
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getServerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v4

    .line 83138
    .local v1, "certs":[Ljava/security/cert/Certificate;
    array-length v3, v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v4, v2

    .line 83139
    .local v4, "cert":Ljava/security/cert/Certificate;
    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 83140
    .local v5, "x509Certificate":Ljava/security/cert/X509Certificate;
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/gC;->A01([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83141
    .local p0, "certSha1":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 83142
    :cond_0
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/gC;->A01([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83143
    .local p1, "keySha1":Ljava/lang/String;
    if-eqz p2, :cond_1

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 83144
    .end local v4    # "cert":Ljava/security/cert/Certificate;
    .end local v5    # "x509Certificate":Ljava/security/cert/X509Certificate;
    .end local p0    # "certSha1":Ljava/lang/String;
    .end local p1    # "keySha1":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83145
    :goto_1
    return-void

    .line 83146
    :goto_2
    return-void

    .line 83147
    :cond_2
    const/4 v2, 0x5

    const/16 v1, 0x2f

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gC;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/security/cert/CertificateException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .end local p3
    .end local p4
    .end local p5
    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83148
    .end local v1    # "certs":[Ljava/security/cert/Certificate;
    .restart local p3
    .restart local p4
    .restart local p5
    :catch_0
    move-exception v0

    .line 83149
    .local v0, "e":Ljava/lang/Exception;
    throw v0
.end method
