.class public final Lcom/facebook/ads/redexgen/X/kP;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Mh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Mi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LegacyStorage"
.end annotation


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Mo;

.field public A01:Z

.field public final A02:Lcom/facebook/ads/redexgen/X/40;

.field public final A03:Ljava/security/SecureRandom;

.field public final A04:Ljavax/crypto/Cipher;

.field public final A05:Ljavax/crypto/spec/SecretKeySpec;

.field public final A06:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3161
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "F3MsLf6P"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "OcoAPMR8U6yTwuATNsSjihct3nuq8KFx"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "bdE6GcC1kS6ix1fgAcoyQkC9rv"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "V0wqj6Me"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "EdnIrf"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "cKhO3MBZMfPQ2uYBFx142UbqGZ0vcEvq"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "x8zWNoAeDf"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "YEiR7yHxtXFy2pC0Q9KvxgBtY"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/kP;->A08:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/kP;->A03()V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;[BZ)V
    .locals 4

    .line 90021
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90022
    const/4 v2, 0x0

    if-nez p2, :cond_0

    if-nez p3, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 90023
    const/4 v3, 0x0

    .line 90024
    .local v2, "cipher":Ljavax/crypto/Cipher;
    const/4 v1, 0x0

    .line 90025
    .local v3, "secretKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    if-eqz p2, :cond_3

    .line 90026
    array-length v1, p2

    const/16 v0, 0x10

    if-ne v1, v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    goto :goto_1

    .line 90027
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 90028
    :goto_1
    :try_start_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Mi;->A06()Ljavax/crypto/Cipher;

    move-result-object v3

    .line 90029
    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kP;->A02(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, p2, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    goto :goto_3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90030
    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 90031
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :goto_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 90032
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :cond_3
    xor-int/lit8 v0, p3, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 90033
    :goto_3
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/kP;->A06:Z

    .line 90034
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/kP;->A04:Ljavax/crypto/Cipher;

    .line 90035
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/kP;->A05:Ljavax/crypto/spec/SecretKeySpec;

    .line 90036
    if-eqz p3, :cond_4

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    :goto_4
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kP;->A03:Ljava/security/SecureRandom;

    .line 90037
    new-instance v0, Lcom/facebook/ads/redexgen/X/40;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/40;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kP;->A02:Lcom/facebook/ads/redexgen/X/40;

    .line 90038
    return-void

    .line 90039
    :cond_4
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/Mg;I)I
    .locals 6

    .line 90040
    iget v0, p1, Lcom/facebook/ads/redexgen/X/Mg;->A01:I

    .line 90041
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Mg;->A02:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 90042
    .end local v0    # "result":I
    .local v1, "result":I
    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    .line 90043
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Mg;->A03()Lcom/facebook/ads/redexgen/X/kN;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Mj;->A00(Lcom/facebook/ads/redexgen/X/Mk;)J

    move-result-wide v4

    .line 90044
    .local v2, "length":J
    mul-int/lit8 v3, v1, 0x1f

    const/16 v0, 0x20

    ushr-long v1, v4, v0

    xor-long/2addr v1, v4

    long-to-int v0, v1

    add-int/2addr v3, v0

    .line 90045
    .end local v1    # "result":I
    .end local v2    # "length":J
    .restart local v0    # "result":I
    .end local v1
    .restart local v0    # "result":I
    :goto_0
    return v3

    .line 90046
    .end local v0    # "result":I
    .restart local v1    # "result":I
    :cond_0
    mul-int/lit8 v3, v1, 0x1f

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Mg;->A03()Lcom/facebook/ads/redexgen/X/kN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/kN;->hashCode()I

    move-result v0

    add-int/2addr v3, v0

    goto :goto_0
.end method

.method private A01(ILjava/io/DataInputStream;)Lcom/facebook/ads/redexgen/X/Mg;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90047
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 90048
    .local v0, "id":I
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    .line 90049
    .local v1, "key":Ljava/lang/String;
    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    .line 90050
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    .line 90051
    .local v2, "length":J
    new-instance v1, Lcom/facebook/ads/redexgen/X/Ml;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Ml;-><init>()V

    .line 90052
    .local v4, "mutations":Lcom/facebook/ads/redexgen/X/Ml;
    invoke-static {v1, v2, v3}, Lcom/facebook/ads/redexgen/X/Ml;->A00(Lcom/facebook/ads/redexgen/X/Ml;J)Lcom/facebook/ads/redexgen/X/Ml;

    .line 90053
    sget-object v0, Lcom/facebook/ads/redexgen/X/kN;->A03:Lcom/facebook/ads/redexgen/X/kN;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/kN;->A05(Lcom/facebook/ads/redexgen/X/Ml;)Lcom/facebook/ads/redexgen/X/kN;

    move-result-object v1

    .line 90054
    .end local v4    # "mutations":Lcom/facebook/ads/redexgen/X/Ml;
    .local v2, "metadata":Lcom/facebook/ads/redexgen/X/kN;
    .restart local v2    # "metadata":Lcom/facebook/ads/redexgen/X/kN;
    :goto_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Mg;

    invoke-direct {v0, v5, v4, v1}, Lcom/facebook/ads/redexgen/X/Mg;-><init>(ILjava/lang/String;Lcom/facebook/ads/redexgen/X/kN;)V

    return-object v0

    .line 90055
    .end local v2    # "metadata":Lcom/facebook/ads/redexgen/X/kN;
    :cond_0
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/Mi;->A03(Ljava/io/DataInputStream;)Lcom/facebook/ads/redexgen/X/kN;

    move-result-object v1

    goto :goto_0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/kP;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/kP;->A08:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/kP;->A08:[Ljava/lang/String;

    const-string v1, "SFj9nJw9GR"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "liv3w1"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x75

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A03()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/kP;->A07:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xbt
        0xft
        0x1dt
    .end array-data
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/Mg;Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90056
    iget v0, p1, Lcom/facebook/ads/redexgen/X/Mg;->A01:I

    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 90057
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Mg;->A02:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 90058
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Mg;->A03()Lcom/facebook/ads/redexgen/X/kN;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/facebook/ads/redexgen/X/Mi;->A09(Lcom/facebook/ads/redexgen/X/kN;Ljava/io/DataOutputStream;)V

    .line 90059
    return-void
.end method

.method private A05(Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Mg;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90060
    .local p4, "content":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/facebook/ads/google/android/exoplayer2/upstream/cache/CachedContent;>;"
    const/4 v3, 0x0

    .line 90061
    .local v0, "output":Ljava/io/DataOutputStream;
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kP;->A02:Lcom/facebook/ads/redexgen/X/40;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/40;->A03()Lcom/facebook/ads/redexgen/X/3z;

    move-result-object v1

    .line 90062
    .local v1, "outputStream":Ljava/io/OutputStream;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kP;->A00:Lcom/facebook/ads/redexgen/X/Mo;

    if-nez v0, :cond_0

    .line 90063
    new-instance v0, Lcom/facebook/ads/redexgen/X/Mo;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Mo;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kP;->A00:Lcom/facebook/ads/redexgen/X/Mo;

    .line 90064
    :goto_0
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/kP;->A00:Lcom/facebook/ads/redexgen/X/Mo;

    .line 90065
    .local v2, "bufferedOutputStream":Lcom/facebook/ads/redexgen/X/Mo;
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v3, v0

    .line 90066
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 90067
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/kP;->A06:Z

    const/4 v6, 0x1

    if-eqz v0, :cond_1

    goto :goto_1

    .line 90068
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kP;->A00:Lcom/facebook/ads/redexgen/X/Mo;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Mo;->A00(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 90069
    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    .line 90070
    .local v4, "flags":I
    :goto_2
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 90071
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/kP;->A06:Z

    if-eqz v0, :cond_2

    .line 90072
    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 90073
    .local v6, "initializationVector":[B
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kP;->A03:Ljava/security/SecureRandom;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/SecureRandom;

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 90074
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 90075
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90076
    .local p0, "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kP;->A04:Ljavax/crypto/Cipher;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/crypto/Cipher;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kP;->A05:Ljavax/crypto/spec/SecretKeySpec;

    .line 90077
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Key;

    invoke-virtual {v1, v6, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90078
    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 90079
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kP;->A04:Ljavax/crypto/Cipher;

    new-instance v1, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v1, v5, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v3, v0

    goto :goto_4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90080
    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    .line 90081
    .local v3, "e":Ljava/security/GeneralSecurityException;
    :goto_3
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "output":Ljava/io/DataOutputStream;
    .end local p4
    throw v0

    .line 90082
    .end local v3    # "e":Ljava/security/GeneralSecurityException;
    .end local v6    # "initializationVector":[B
    .end local p0    # "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v0    # "output":Ljava/io/DataOutputStream;
    .restart local p4
    :cond_2
    :goto_4
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 90083
    const/4 v2, 0x0

    .line 90084
    .local v5, "hashCode":I
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Mg;

    .line 90085
    .local p0, "cachedContent":Lcom/facebook/ads/redexgen/X/Mg;
    invoke-direct {p0, v0, v3}, Lcom/facebook/ads/redexgen/X/kP;->A04(Lcom/facebook/ads/redexgen/X/Mg;Ljava/io/DataOutputStream;)V

    .line 90086
    invoke-direct {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/kP;->A00(Lcom/facebook/ads/redexgen/X/Mg;I)I

    move-result v0

    add-int/2addr v2, v0

    .line 90087
    .end local p0    # "cachedContent":Lcom/facebook/ads/redexgen/X/Mg;
    goto :goto_5

    .line 90088
    :cond_3
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 90089
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kP;->A02:Lcom/facebook/ads/redexgen/X/40;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/40;->A06(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 90090
    const/4 v0, 0x0

    .line 90091
    .end local v1    # "outputStream":Ljava/io/OutputStream;
    .end local v2    # "bufferedOutputStream":Lcom/facebook/ads/redexgen/X/Mo;
    .end local v4    # "flags":I
    .end local v5    # "hashCode":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A10(Ljava/io/Closeable;)V

    .line 90092
    return-void

    .line 90093
    :catchall_0
    move-exception v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/5C;->A10(Ljava/io/Closeable;)V

    .line 90094
    throw v0
.end method

.method private A06(Ljava/util/HashMap;Landroid/util/SparseArray;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Mg;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 90095
    .local p3, "content":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/facebook/ads/google/android/exoplayer2/upstream/cache/CachedContent;>;"
    .local p4, "idToKey":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kP;->A02:Lcom/facebook/ads/redexgen/X/40;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/40;->A07()Z

    move-result v0

    const/4 v4, 0x1

    if-nez v0, :cond_0

    .line 90096
    return v4

    .line 90097
    :cond_0
    const/4 v3, 0x0

    .line 90098
    .local v0, "input":Ljava/io/DataInputStream;
    const/4 v9, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kP;->A02:Lcom/facebook/ads/redexgen/X/40;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/40;->A04()Ljava/io/InputStream;

    move-result-object v1

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 90099
    .local v3, "inputStream":Ljava/io/InputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v1

    .line 90100
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 90101
    .local v4, "version":I
    if-ltz v7, :cond_1

    const/4 v6, 0x2

    if-le v7, v6, :cond_2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90102
    .end local v5
    .end local v6
    .end local v7
    .end local v8
    .end local v9
    :cond_1
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/5C;->A10(Ljava/io/Closeable;)V

    .line 90103
    return v9

    .line 90104
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 90105
    .local v6, "flags":I
    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    .line 90106
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/kP;->A04:Ljavax/crypto/Cipher;

    if-nez v1, :cond_3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90107
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/5C;->A10(Ljava/io/Closeable;)V

    .line 90108
    return v9

    .line 90109
    :cond_3
    const/16 v1, 0x10

    :try_start_2
    new-array v1, v1, [B

    .line 90110
    .local v7, "initializationVector":[B
    invoke-virtual {v3, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 90111
    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v5, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90112
    .local v8, "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    :try_start_3
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/kP;->A04:Ljavax/crypto/Cipher;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/kP;->A05:Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Key;

    invoke-virtual {v2, v6, v1, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_3
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 90113
    :try_start_4
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/kP;->A04:Ljavax/crypto/Cipher;

    new-instance v1, Ljavax/crypto/CipherInputStream;

    invoke-direct {v1, v0, v2}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v0

    goto :goto_1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 90114
    .restart local v7    # "initializationVector":[B
    .restart local v8    # "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 90115
    .local v1, "e":Ljava/security/GeneralSecurityException;
    :goto_0
    :try_start_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Ljava/io/DataInputStream;
    .end local p3
    .end local p4
    throw v0

    .line 90116
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    .end local v7    # "initializationVector":[B
    .end local v8    # "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v0    # "input":Ljava/io/DataInputStream;
    .restart local p3
    .restart local p4
    :cond_4
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/kP;->A06:Z

    if-eqz v0, :cond_5

    .line 90117
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/kP;->A01:Z

    .line 90118
    :cond_5
    :goto_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 90119
    .local v5, "count":I
    const/4 v6, 0x0

    .line 90120
    .local v7, "hashCode":I
    const/4 v5, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v5, v8, :cond_6

    .line 90121
    invoke-direct {p0, v7, v3}, Lcom/facebook/ads/redexgen/X/kP;->A01(ILjava/io/DataInputStream;)Lcom/facebook/ads/redexgen/X/Mg;

    move-result-object v2

    .line 90122
    .local v9, "cachedContent":Lcom/facebook/ads/redexgen/X/Mg;
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Mg;->A02:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90123
    iget v1, v2, Lcom/facebook/ads/redexgen/X/Mg;->A01:I

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Mg;->A02:Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 90124
    invoke-direct {p0, v2, v7}, Lcom/facebook/ads/redexgen/X/kP;->A00(Lcom/facebook/ads/redexgen/X/Mg;I)I

    move-result v0

    add-int/2addr v6, v0

    .line 90125
    .end local v9    # "cachedContent":Lcom/facebook/ads/redexgen/X/Mg;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 90126
    .end local v8    # "i":I
    :cond_6
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 90127
    .local v8, "fileHashCode":I
    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_7

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    goto :goto_4

    :goto_3
    const/4 v0, 0x1

    .line 90128
    .local v9, "isEOF":Z
    :goto_4
    if-ne v2, v6, :cond_8

    if-nez v0, :cond_9
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 90129
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "version":I
    .restart local v5    # "count":I
    .restart local v6    # "flags":I
    .restart local v7    # "hashCode":I
    .restart local v8    # "fileHashCode":I
    .restart local v9    # "isEOF":Z
    :cond_8
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/5C;->A10(Ljava/io/Closeable;)V

    .line 90130
    return v9

    .line 90131
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "version":I
    .end local v5    # "count":I
    .end local v6    # "flags":I
    .end local v7    # "hashCode":I
    .end local v8    # "fileHashCode":I
    .end local v9    # "isEOF":Z
    :cond_9
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/5C;->A10(Ljava/io/Closeable;)V

    .line 90132
    return v4

    .line 90133
    .end local v3
    .end local v4
    :catchall_0
    move-exception v0

    if-eqz v3, :cond_a

    .line 90134
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/5C;->A10(Ljava/io/Closeable;)V

    .line 90135
    :cond_a
    throw v0

    .line 90136
    .local v1, "e":Ljava/io/IOException;
    :catch_2
    if-eqz v3, :cond_b

    .line 90137
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/5C;->A10(Ljava/io/Closeable;)V

    .line 90138
    :cond_b
    return v9
.end method


# virtual methods
.method public final A5p()V
    .locals 1

    .line 90139
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kP;->A02:Lcom/facebook/ads/redexgen/X/40;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/40;->A05()V

    .line 90140
    return-void
.end method

.method public final A6S()Z
    .locals 1

    .line 90141
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kP;->A02:Lcom/facebook/ads/redexgen/X/40;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/40;->A07()Z

    move-result v0

    return v0
.end method

.method public final AAF(J)V
    .locals 0

    .line 90142
    return-void
.end method

.method public final AAs(Ljava/util/HashMap;Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Mg;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 90143
    .local v2, "content":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/facebook/ads/google/android/exoplayer2/upstream/cache/CachedContent;>;"
    .local p0, "idToKey":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/kP;->A01:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 90144
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/kP;->A06(Ljava/util/HashMap;Landroid/util/SparseArray;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90145
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/kP;->A08:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 90146
    sget-object v2, Lcom/facebook/ads/redexgen/X/kP;->A08:[Ljava/lang/String;

    const-string v1, "LXlnn5Px"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 90147
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kP;->A02:Lcom/facebook/ads/redexgen/X/40;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/40;->A05()V

    .line 90148
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AFd(Lcom/facebook/ads/redexgen/X/Mg;Z)V
    .locals 1

    .line 90149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/kP;->A01:Z

    .line 90150
    return-void
.end method

.method public final AGK(Lcom/facebook/ads/redexgen/X/Mg;)V
    .locals 1

    .line 90151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/kP;->A01:Z

    .line 90152
    return-void
.end method

.method public final AKI(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Mg;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90153
    .local p1, "content":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/facebook/ads/google/android/exoplayer2/upstream/cache/CachedContent;>;"
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/kP;->A05(Ljava/util/HashMap;)V

    .line 90154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/kP;->A01:Z

    .line 90155
    return-void
.end method

.method public final AKJ(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Mg;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90156
    .local p1, "content":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/facebook/ads/google/android/exoplayer2/upstream/cache/CachedContent;>;"
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/kP;->A01:Z

    if-nez v0, :cond_0

    .line 90157
    return-void

    .line 90158
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/kP;->AKI(Ljava/util/HashMap;)V

    .line 90159
    return-void
.end method
