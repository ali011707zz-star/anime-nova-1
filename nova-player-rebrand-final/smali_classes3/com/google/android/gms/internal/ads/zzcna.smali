.class public final Lcom/google/android/gms/internal/ads/zzcna;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzikg;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcmc;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcmc;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcna;->zza:Lcom/google/android/gms/internal/ads/zzcmc;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzcmc;)Lcom/google/android/gms/internal/ads/zzcna;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcna;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcna;-><init>(Lcom/google/android/gms/internal/ads/zzcmc;)V

    return-object v0
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzcmc;)Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcmc;->zzd()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zziko;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcna;->zza:Lcom/google/android/gms/internal/ads/zzcmc;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcna;->zzd(Lcom/google/android/gms/internal/ads/zzcmc;)Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcna;->zza:Lcom/google/android/gms/internal/ads/zzcmc;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcna;->zzd(Lcom/google/android/gms/internal/ads/zzcmc;)Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v0

    return-object v0
.end method
