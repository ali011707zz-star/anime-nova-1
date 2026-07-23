.class final Lcom/google/android/gms/internal/ads/zzelr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdmc;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzcen;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfir;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzelt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzelt;Lcom/google/android/gms/internal/ads/zzcen;Lcom/google/android/gms/internal/ads/zzfir;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzelr;->zza:Lcom/google/android/gms/internal/ads/zzcen;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzelr;->zzb:Lcom/google/android/gms/internal/ads/zzfir;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzelr;->zzc:Lcom/google/android/gms/internal/ads/zzelt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzdbs;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzb()Lcom/google/android/gms/ads/internal/overlay/zzn;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzelr;->zza:Lcom/google/android/gms/internal/ads/zzcen;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcen;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzelr;->zzc:Lcom/google/android/gms/internal/ads/zzelt;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzelt;->zzd()Lcom/google/android/gms/internal/ads/zzdxz;

    move-result-object p3

    const/4 v0, 0x1

    .line 3
    invoke-static {p2, p1, v0, p3}, Lcom/google/android/gms/ads/internal/overlay/zzn;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;ZLcom/google/android/gms/internal/ads/zzdxz;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzfir;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelr;->zzb:Lcom/google/android/gms/internal/ads/zzfir;

    return-object v0
.end method
