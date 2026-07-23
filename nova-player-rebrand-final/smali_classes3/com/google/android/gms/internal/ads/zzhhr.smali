.class public final Lcom/google/android/gms/internal/ads/zzhhr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhas;


# instance fields
.field private final zza:[B

.field private final zzb:[B

.field private final zzc:Ljava/security/Provider;


# direct methods
.method private constructor <init>([B[BLjava/security/Provider;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhid;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhhr;->zza:[B

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhhr;->zzb:[B

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzhhr;->zzc:Ljava/security/Provider;

    return-void

    :cond_0
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "The key length in bytes must be 32."

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Can not use ChaCha20Poly1305 in FIPS-mode."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzhfr;)Lcom/google/android/gms/internal/ads/zzhas;
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhgw;->zzc()Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhhr;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhfr;->zze()Lcom/google/android/gms/internal/ads/zzhyg;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhax;->zza()Lcom/google/android/gms/internal/ads/zzhbt;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzhyg;->zzc(Lcom/google/android/gms/internal/ads/zzhbt;)[B

    move-result-object v2

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhfr;->zzc()Lcom/google/android/gms/internal/ads/zzhye;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhye;->zzc()[B

    move-result-object p0

    .line 4
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-direct {v1, v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzhhr;-><init>([B[BLjava/security/Provider;)V

    return-object v1
.end method


# virtual methods
.method public final zza([B[B)[B
    .locals 9

    if-eqz p1, :cond_3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhhr;->zzb:[B

    array-length v1, p1

    array-length v2, v0

    add-int/lit8 v3, v2, 0x28

    if-lt v1, v3, :cond_2

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzhln;->zze([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x18

    .line 4
    new-array v3, v0, [B

    const/4 v4, 0x0

    .line 5
    invoke-static {p1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhhr;->zza:[B

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhhc;->zzd([B)[I

    move-result-object v0

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzhhc;->zzd([B)[I

    move-result-object v4

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/zzhhc;->zze([I[I)[I

    move-result-object v0

    .line 7
    array-length v4, v0

    const/4 v5, 0x4

    mul-int/2addr v4, v5

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 8
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 9
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 10
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v6, "ChaCha20"

    invoke-direct {v4, v0, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 11
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    const/16 v6, 0xc

    new-array v6, v6, [B

    const/16 v7, 0x8

    const/16 v8, 0x10

    .line 12
    invoke-static {v3, v8, v6, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    invoke-direct {v0, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhhr;->zzc:Ljava/security/Provider;

    .line 13
    sget v5, Lcom/google/android/gms/internal/ads/zzhgw;->$r8$clinit:I

    const-string v5, "ChaCha20-Poly1305"

    .line 14
    invoke-static {v5, v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v3

    const/4 v5, 0x2

    .line 15
    invoke-virtual {v3, v5, v4, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    if-eqz p2, :cond_0

    array-length v0, p2

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {v3, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    :cond_0
    add-int/lit8 p2, v2, 0x18

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x18

    .line 17
    invoke-virtual {v3, p1, p2, v1}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Decryption failed (OutputPrefix mismatch)."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "ciphertext too short"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "ciphertext is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
