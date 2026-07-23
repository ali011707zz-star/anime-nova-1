.class public final Lcom/google/android/gms/internal/ads/zzhhl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhas;


# instance fields
.field private final zza:[B

.field private final zzb:I

.field private final zzc:Lcom/google/android/gms/internal/ads/zzhnp;


# direct methods
.method private constructor <init>([BLcom/google/android/gms/internal/ads/zzhye;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhno;->zzb(I)Lcom/google/android/gms/internal/ads/zzhno;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhax;->zza()Lcom/google/android/gms/internal/ads/zzhbt;

    move-result-object v1

    .line 2
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzhyg;->zza([BLcom/google/android/gms/internal/ads/zzhbt;)Lcom/google/android/gms/internal/ads/zzhyg;

    move-result-object p1

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzhnn;->zzc(Lcom/google/android/gms/internal/ads/zzhno;Lcom/google/android/gms/internal/ads/zzhyg;)Lcom/google/android/gms/internal/ads/zzhnn;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhxr;->zzb(Lcom/google/android/gms/internal/ads/zzhnn;)Lcom/google/android/gms/internal/ads/zzhnp;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhhl;->zzc:Lcom/google/android/gms/internal/ads/zzhnp;

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzhye;->zzc()[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhhl;->zza:[B

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzhhl;->zzb:I

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzhfl;)Lcom/google/android/gms/internal/ads/zzhas;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhfl;->zzf()Lcom/google/android/gms/internal/ads/zzhfq;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhfl;->zzf()Lcom/google/android/gms/internal/ads/zzhfq;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhhl;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhfl;->zze()Lcom/google/android/gms/internal/ads/zzhyg;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhax;->zza()Lcom/google/android/gms/internal/ads/zzhbt;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhyg;->zzc(Lcom/google/android/gms/internal/ads/zzhbt;)[B

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhfl;->zzc()Lcom/google/android/gms/internal/ads/zzhye;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhfl;->zzf()Lcom/google/android/gms/internal/ads/zzhfq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhfq;->zzd()I

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/gms/internal/ads/zzhhl;-><init>([BLcom/google/android/gms/internal/ads/zzhye;I)V

    return-object v0
.end method


# virtual methods
.method public final zza([B[B)[B
    .locals 11

    if-eqz p1, :cond_7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhhl;->zza:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzhhl;->zzb:I

    array-length v2, p1

    array-length v3, v0

    add-int/2addr v1, v3

    add-int/lit8 v4, v1, 0x1c

    const-string v5, "ciphertext too short"

    if-lt v2, v4, :cond_6

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzhln;->zze([B[B)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5
    invoke-static {p1, v3, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    const/16 v3, 0x10

    new-array v4, v3, [B

    fill-array-data v4, :array_0

    new-array v6, v3, [B

    fill-array-data v6, :array_1

    .line 6
    array-length v7, v0

    const/16 v8, 0xc

    if-gt v7, v8, :cond_4

    const/16 v9, 0x8

    if-lt v7, v9, :cond_4

    const/4 v9, 0x0

    const/4 v10, 0x4

    .line 8
    invoke-static {v0, v9, v4, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    invoke-static {v0, v9, v6, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhhl;->zzc:Lcom/google/android/gms/internal/ads/zzhnp;

    const/16 v7, 0x20

    new-array v7, v7, [B

    .line 10
    invoke-interface {v0, v4, v3}, Lcom/google/android/gms/internal/ads/zzhnp;->zza([BI)[B

    move-result-object v4

    invoke-static {v4, v9, v7, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    invoke-interface {v0, v6, v3}, Lcom/google/android/gms/internal/ads/zzhnp;->zza([BI)[B

    move-result-object v0

    invoke-static {v0, v9, v7, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x2

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhid;->zza(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 14
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzhgj;->zzb([B)Ljavax/crypto/SecretKey;

    move-result-object v3

    add-int/lit8 v4, v1, 0xc

    .line 15
    invoke-static {p1, v1, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    .line 16
    array-length v7, v6

    if-ne v7, v8, :cond_2

    add-int/lit8 v1, v1, 0x1c

    if-lt v2, v1, :cond_1

    .line 19
    invoke-static {v6, v9, v8}, Lcom/google/android/gms/internal/ads/zzhgj;->zzc([BII)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhgj;->zza()Ljavax/crypto/Cipher;

    move-result-object v5

    .line 21
    invoke-virtual {v5, v0, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    if-eqz p2, :cond_0

    array-length v0, p2

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {v5, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    :cond_0
    sub-int/2addr v2, v4

    .line 23
    invoke-virtual {v5, p1, v4, v2}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p1

    return-object p1

    .line 18
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-direct {p1, v5}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "iv is wrong size"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_4
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "invalid salt size"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_5
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Decryption failed (OutputPrefix mismatch)."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_6
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-direct {p1, v5}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "ciphertext is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x58t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x2t
        0x58t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method
