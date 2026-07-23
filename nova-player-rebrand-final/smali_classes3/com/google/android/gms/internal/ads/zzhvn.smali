.class public final Lcom/google/android/gms/internal/ads/zzhvn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhbr;


# static fields
.field private static final zza:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhvn;->zza:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x2et
        0x2t
        0x1t
        0x0t
        0x30t
        0x5t
        0x6t
        0x3t
        0x2bt
        0x65t
        0x70t
        0x4t
        0x22t
        0x4t
        0x20t
    .end array-data
.end method

.method private constructor <init>([B[B[BLjava/security/Provider;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x1

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhid;->zza(I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 2
    array-length p3, p1

    .line 3
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    const/4 v1, 0x0

    const/16 v2, 0x20

    if-ne p3, v2, :cond_0

    const/4 p3, 0x2

    .line 4
    new-array p3, p3, [[B

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhvn;->zza:[B

    aput-object v2, p3, v1

    aput-object p1, p3, p2

    .line 5
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzhwr;->zza([[B)[B

    move-result-object p1

    .line 3
    invoke-direct {v0, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    const-string p1, "Ed25519"

    .line 6
    invoke-static {p1, p4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object p1

    .line 7
    invoke-virtual {p1, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p3, p2, v1

    const-string p3, "Given private key\'s length is not %s"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Can not use Ed25519 in FIPS-mode."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzhsr;)Lcom/google/android/gms/internal/ads/zzhbr;
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhih;->zza()Ljava/security/Provider;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhvn;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhsr;->zzf()Lcom/google/android/gms/internal/ads/zzhyg;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhax;->zza()Lcom/google/android/gms/internal/ads/zzhbt;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzhyg;->zzc(Lcom/google/android/gms/internal/ads/zzhbt;)[B

    move-result-object v2

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhsr;->zze()Lcom/google/android/gms/internal/ads/zzhsx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhuw;->zze()Lcom/google/android/gms/internal/ads/zzhye;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhye;->zzc()[B

    move-result-object v3

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhsr;->zzd()Lcom/google/android/gms/internal/ads/zzhsq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhsq;->zzc()Lcom/google/android/gms/internal/ads/zzhsp;

    move-result-object p0

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhsp;->zzc:Lcom/google/android/gms/internal/ads/zzhsp;

    invoke-virtual {p0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v4, 0x0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    new-array p0, p0, [B

    aput-byte v4, p0, v4

    goto :goto_0

    .line 6
    :cond_0
    new-array p0, v4, [B

    :goto_0
    invoke-direct {v1, v2, v3, p0, v0}, Lcom/google/android/gms/internal/ads/zzhvn;-><init>([B[B[BLjava/security/Provider;)V

    return-object v1

    .line 2
    :cond_1
    new-instance p0, Ljava/security/NoSuchProviderException;

    const-string v0, "Ed25519SignJce requires the Conscrypt provider."

    invoke-direct {p0, v0}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final zza([B)[B
    .locals 0

    .line 0
    const/4 p1, 0x0

    throw p1
.end method
