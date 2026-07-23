.class public final Lcom/google/android/gms/internal/ads/zzhnn;
.super Lcom/google/android/gms/internal/ads/zzhnq;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhno;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhyg;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzhno;Lcom/google/android/gms/internal/ads/zzhyg;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhnq;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhnn;->zza:Lcom/google/android/gms/internal/ads/zzhno;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhnn;->zzb:Lcom/google/android/gms/internal/ads/zzhyg;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzhno;Lcom/google/android/gms/internal/ads/zzhyg;)Lcom/google/android/gms/internal/ads/zzhnn;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhno;->zzc()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhyg;->zzd()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhnn;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzhnn;-><init>(Lcom/google/android/gms/internal/ads/zzhno;Lcom/google/android/gms/internal/ads/zzhyg;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Key size mismatch"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final synthetic zza()Lcom/google/android/gms/internal/ads/zzhbp;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhnn;->zza:Lcom/google/android/gms/internal/ads/zzhno;

    return-object v0
.end method

.method public final zzb()Ljava/lang/Integer;
    .locals 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzhyg;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhnn;->zzb:Lcom/google/android/gms/internal/ads/zzhyg;

    return-object v0
.end method
