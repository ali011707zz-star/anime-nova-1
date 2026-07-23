.class public final Lcom/google/android/gms/internal/ads/zzhwv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhbs;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhye;

.field private final zzb:[B

.field private final zzc:[B


# direct methods
.method private constructor <init>([B[B[B)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhid;->zza(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    array-length v1, p1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhye;->zza([B)Lcom/google/android/gms/internal/ads/zzhye;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhwv;->zza:Lcom/google/android/gms/internal/ads/zzhye;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhwv;->zzb:[B

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzhwv;->zzc:[B

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhio;->zzd()V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array p3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p3, v0

    const-string p2, "Given public key\'s length is not %s."

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 2
    new-instance p2, Ljava/security/GeneralSecurityException;

    const-string p3, "Can not use Ed25519 in FIPS-mode."

    invoke-direct {p2, p3}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzhsx;)Lcom/google/android/gms/internal/ads/zzhbs;
    .locals 5

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhid;->zza(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhvo;->zzb(Lcom/google/android/gms/internal/ads/zzhsx;)Lcom/google/android/gms/internal/ads/zzhbs;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhwv;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhsx;->zzd()Lcom/google/android/gms/internal/ads/zzhye;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhye;->zzc()[B

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhsx;->zze()Lcom/google/android/gms/internal/ads/zzhye;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhye;->zzc()[B

    move-result-object v3

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhsx;->zzf()Lcom/google/android/gms/internal/ads/zzhsq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhsq;->zzc()Lcom/google/android/gms/internal/ads/zzhsp;

    move-result-object p0

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhsp;->zzc:Lcom/google/android/gms/internal/ads/zzhsp;

    invoke-virtual {p0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v4, 0x0

    if-eqz p0, :cond_0

    new-array p0, v0, [B

    aput-byte v4, p0, v4

    goto :goto_0

    .line 7
    :cond_0
    new-array p0, v4, [B

    :goto_0
    invoke-direct {v1, v2, v3, p0}, Lcom/google/android/gms/internal/ads/zzhwv;-><init>([B[B[B)V

    return-object v1

    .line 2
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Can not use Ed25519 in FIPS-mode."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final zzc([B[B)V
    .locals 2

    .line 1
    array-length v0, p1

    const/16 v1, 0x40

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhwv;->zza:Lcom/google/android/gms/internal/ads/zzhye;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhye;->zzc()[B

    move-result-object v0

    invoke-static {p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzhio;->zzc([B[B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Signature check failed."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "The length of the signature is not %s."

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final zza([B[B)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhwv;->zzb:[B

    array-length v1, v0

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhwv;->zzc:[B

    array-length v2, v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhwv;->zzc([B[B)V

    return-void

    .line 1
    :cond_1
    :goto_0
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzhln;->zze([B[B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhwv;->zzc:[B

    array-length v2, v0

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    new-array v2, v2, [[B

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 p2, 0x1

    aput-object v0, v2, p2

    .line 3
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhwr;->zza([[B)[B

    move-result-object p2

    .line 4
    :cond_2
    array-length v0, p1

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhwv;->zzc([B[B)V

    return-void

    .line 2
    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Invalid signature (output prefix mismatch)"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
