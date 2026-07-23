.class public final Lcom/google/android/gms/internal/ads/zzhyd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhas;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhhi;

.field private final zzb:[B


# direct methods
.method private constructor <init>([B[B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhhi;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzhhi;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhyd;->zza:Lcom/google/android/gms/internal/ads/zzhhi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhyd;->zzb:[B

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzhfr;)Lcom/google/android/gms/internal/ads/zzhas;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhyd;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhfr;->zze()Lcom/google/android/gms/internal/ads/zzhyg;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhax;->zza()Lcom/google/android/gms/internal/ads/zzhbt;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhyg;->zzc(Lcom/google/android/gms/internal/ads/zzhbt;)[B

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhfr;->zzc()Lcom/google/android/gms/internal/ads/zzhye;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhye;->zzc()[B

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzhyd;-><init>([B[B)V

    return-object v0
.end method

.method private final zzc([B[B)[B
    .locals 3

    .line 1
    array-length v0, p1

    const/16 v1, 0x28

    if-lt v0, v1, :cond_0

    const/16 v1, 0x18

    .line 3
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    add-int/lit8 v0, v0, -0x18

    .line 4
    invoke-static {p1, v1, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhyd;->zza:Lcom/google/android/gms/internal/ads/zzhhi;

    .line 5
    invoke-virtual {v0, p1, v2, p2}, Lcom/google/android/gms/internal/ads/zzhhg;->zzb(Ljava/nio/ByteBuffer;[B[B)[B

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "ciphertext too short"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final zza([B[B)[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhyd;->zzb:[B

    array-length v1, v0

    if-nez v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhyd;->zzc([B[B)[B

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzhln;->zze([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    array-length v0, p1

    .line 5
    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhyd;->zzc([B[B)[B

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Decryption failed (OutputPrefix mismatch)."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
