.class public final Lcom/google/android/gms/internal/ads/zzhnt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhnp;


# static fields
.field private static final zzd:Ljava/lang/ThreadLocal;


# instance fields
.field private final zza:Ljavax/crypto/SecretKey;

.field private final zzb:[B

.field private final zzc:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhns;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhns;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhnt;->zzd:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>([B)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhyc;->zza(I)V

    .line 2
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhnt;->zza:Ljavax/crypto/SecretKey;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhnt;->zzc()Ljavax/crypto/Cipher;

    move-result-object p1

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p1, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 5
    invoke-virtual {p1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhnd;->zza([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhnt;->zzb:[B

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhnd;->zza([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhnt;->zzc:[B

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzhnn;)Lcom/google/android/gms/internal/ads/zzhnp;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhnt;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhnn;->zzd()Lcom/google/android/gms/internal/ads/zzhyg;

    move-result-object p0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhax;->zza()Lcom/google/android/gms/internal/ads/zzhbt;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzhyg;->zzc(Lcom/google/android/gms/internal/ads/zzhbt;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzhnt;-><init>([B)V

    return-object v0
.end method

.method private static zzc()Ljavax/crypto/Cipher;
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhid;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhnt;->zzd:Ljava/lang/ThreadLocal;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Can not use AES-CMAC in FIPS-mode."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static zzd([B[BI[B)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 1
    aget-byte v1, p0, v0

    add-int v2, v0, p2

    aget-byte v2, p1, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final zza([BI)[B
    .locals 10

    const/16 v0, 0x10

    if-gt p2, v0, :cond_8

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhnt;->zza:Ljavax/crypto/SecretKey;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhnt;->zzc()Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v3, 0x1

    .line 3
    invoke-virtual {v2, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v4, v1, -0x1

    shr-int/lit8 v4, v4, 0x4

    add-int/2addr v3, v4

    :goto_0
    add-int/lit8 v4, v3, -0x1

    mul-int/lit8 v5, v4, 0x10

    mul-int/2addr v3, v0

    const/4 v6, 0x0

    if-ne v3, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhnt;->zzb:[B

    .line 4
    invoke-static {p1, v5, v1, v6, v0}, Lcom/google/android/gms/internal/ads/zzhwr;->zzb([BI[BII)[B

    move-result-object v1

    goto :goto_1

    .line 5
    :cond_1
    invoke-static {p1, v5, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 6
    array-length v3, v1

    if-ge v3, v0, :cond_7

    .line 8
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    const/16 v5, -0x80

    .line 9
    aput-byte v5, v1, v3

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhnt;->zzc:[B

    .line 10
    array-length v5, v1

    if-ne v5, v0, :cond_6

    .line 12
    invoke-static {v1, v6, v3, v6, v0}, Lcom/google/android/gms/internal/ads/zzhwr;->zzb([BI[BII)[B

    move-result-object v1

    .line 4
    :goto_1
    new-array v3, v0, [B

    new-array v5, v0, [B

    move v7, v6

    :goto_2
    const-string v8, "Cipher didn\'t write full block"

    if-ge v7, v4, :cond_3

    mul-int/lit8 v9, v7, 0x10

    .line 13
    invoke-static {v3, p1, v9, v5}, Lcom/google/android/gms/internal/ads/zzhnt;->zzd([B[BI[B)V

    .line 14
    invoke-virtual {v2, v5, v6, v0, v3}, Ljavax/crypto/Cipher;->doFinal([BII[B)I

    move-result v9

    if-ne v9, v0, :cond_2

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    invoke-direct {p1, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_3
    invoke-static {v3, v1, v6, v5}, Lcom/google/android/gms/internal/ads/zzhnt;->zzd([B[BI[B)V

    .line 17
    invoke-virtual {v2, v5, v6, v0, v3}, Ljavax/crypto/Cipher;->doFinal([BII[B)I

    move-result p1

    if-ne p1, v0, :cond_5

    if-ne p2, v0, :cond_4

    return-object v3

    .line 19
    :cond_4
    invoke-static {v3, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    return-object p1

    .line 17
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 18
    invoke-direct {p1, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The lengths of x and y should match."

    .line 11
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "x must be smaller than a block."

    .line 7
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_8
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "outputLength too large, max is 16 bytes"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
