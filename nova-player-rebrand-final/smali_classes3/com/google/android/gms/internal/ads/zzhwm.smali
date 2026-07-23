.class public final Lcom/google/android/gms/internal/ads/zzhwm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhas;


# static fields
.field private static final zza:Ljava/lang/ThreadLocal;


# instance fields
.field private final zzb:[B

.field private final zzc:Lcom/google/android/gms/internal/ads/zzhnp;

.field private final zzd:Ljavax/crypto/spec/SecretKeySpec;

.field private final zze:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhwl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhwl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhwm;->zza:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>([BI[B)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhid;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xc

    if-eq p2, v0, :cond_1

    const/16 v0, 0x10

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "IV size should be either 12 or 16 bytes"

    .line 9
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzhwm;->zze:I

    array-length p2, p1

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhyc;->zza(I)V

    .line 4
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhwm;->zzd:Ljavax/crypto/spec/SecretKeySpec;

    .line 5
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhno;->zzb(I)Lcom/google/android/gms/internal/ads/zzhno;

    move-result-object p2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhax;->zza()Lcom/google/android/gms/internal/ads/zzhbt;

    move-result-object v0

    .line 6
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzhyg;->zza([BLcom/google/android/gms/internal/ads/zzhbt;)Lcom/google/android/gms/internal/ads/zzhyg;

    move-result-object p1

    .line 7
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzhnn;->zzc(Lcom/google/android/gms/internal/ads/zzhno;Lcom/google/android/gms/internal/ads/zzhyg;)Lcom/google/android/gms/internal/ads/zzhnn;

    move-result-object p1

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhxr;->zzb(Lcom/google/android/gms/internal/ads/zzhnn;)Lcom/google/android/gms/internal/ads/zzhnp;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhwm;->zzc:Lcom/google/android/gms/internal/ads/zzhnp;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzhwm;->zzb:[B

    return-void

    .line 2
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Can not use AES-EAX in FIPS-mode."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzhcx;)Lcom/google/android/gms/internal/ads/zzhas;
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhid;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhcx;->zzf()Lcom/google/android/gms/internal/ads/zzhdd;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhwm;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhcx;->zze()Lcom/google/android/gms/internal/ads/zzhyg;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhax;->zza()Lcom/google/android/gms/internal/ads/zzhbt;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhyg;->zzc(Lcom/google/android/gms/internal/ads/zzhbt;)[B

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhcx;->zzf()Lcom/google/android/gms/internal/ads/zzhdd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhdd;->zzd()I

    move-result v2

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhcx;->zzc()Lcom/google/android/gms/internal/ads/zzhye;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhye;->zzc()[B

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/gms/internal/ads/zzhwm;-><init>([BI[B)V

    return-object v0

    .line 2
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Can not use AES-EAX in FIPS-mode."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final zzc(I[BII)[B
    .locals 2

    add-int/lit8 v0, p4, 0x10

    .line 1
    new-array v0, v0, [B

    const/16 v1, 0xf

    int-to-byte p1, p1

    .line 2
    aput-byte p1, v0, v1

    const/16 p1, 0x10

    .line 3
    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzhwm;->zzc:Lcom/google/android/gms/internal/ads/zzhnp;

    .line 4
    invoke-interface {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzhnp;->zza([BI)[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final zza([B[B)[B
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhwm;->zzb:[B

    array-length v1, p1

    array-length v2, v0

    sub-int v3, v1, v2

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzhwm;->zze:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x10

    if-ltz v3, :cond_4

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzhln;->zze([B[B)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    .line 5
    invoke-direct {p0, v5, p1, v2, v4}, Lcom/google/android/gms/internal/ads/zzhwm;->zzc(I[BII)[B

    move-result-object v6

    if-nez p2, :cond_0

    new-array p2, v5, [B

    :cond_0
    array-length v7, p2

    const/4 v8, 0x1

    .line 6
    invoke-direct {p0, v8, p2, v5, v7}, Lcom/google/android/gms/internal/ads/zzhwm;->zzc(I[BII)[B

    move-result-object p2

    const/4 v7, 0x2

    add-int/2addr v2, v4

    .line 7
    invoke-direct {p0, v7, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhwm;->zzc(I[BII)[B

    move-result-object v2

    add-int/lit8 v1, v1, -0x10

    move v7, v5

    :goto_0
    const/16 v9, 0x10

    if-ge v5, v9, :cond_1

    add-int v9, v1, v5

    .line 8
    aget-byte v9, p1, v9

    aget-byte v10, p2, v5

    xor-int/2addr v9, v10

    aget-byte v10, v6, v5

    xor-int/2addr v9, v10

    aget-byte v10, v2, v5

    xor-int/2addr v9, v10

    or-int/2addr v7, v9

    int-to-byte v7, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    if-nez v7, :cond_2

    .line 9
    sget-object p2, Lcom/google/android/gms/internal/ads/zzhwm;->zza:Ljava/lang/ThreadLocal;

    .line 10
    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljavax/crypto/Cipher;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhwm;->zzd:Ljavax/crypto/spec/SecretKeySpec;

    .line 11
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {p2, v8, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    array-length v0, v0

    add-int/2addr v0, v4

    .line 12
    invoke-virtual {p2, p1, v0, v3}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p1

    return-object p1

    .line 9
    :cond_2
    new-instance p1, Ljavax/crypto/AEADBadTagException;

    const-string p2, "tag mismatch"

    invoke-direct {p1, p2}, Ljavax/crypto/AEADBadTagException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Decryption failed (OutputPrefix mismatch)."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_4
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "ciphertext too short"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
