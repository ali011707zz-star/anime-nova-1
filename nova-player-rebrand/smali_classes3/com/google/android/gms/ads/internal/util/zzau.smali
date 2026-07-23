.class final Lcom/google/android/gms/ads/internal/util/zzau;
.super Lcom/google/android/gms/ads/internal/client/zzdm;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field final synthetic zza:Landroid/content/Context;

.field final synthetic zzb:Lcom/google/android/gms/ads/internal/util/zzax;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/util/zzax;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzau;->zza:Landroid/content/Context;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzau;->zzb:Lcom/google/android/gms/ads/internal/util/zzax;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzdm;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzau;->zzb:Lcom/google/android/gms/ads/internal/util/zzax;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzau;->zza:Landroid/content/Context;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/client/zze;->zzb:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2, v2}, Lcom/google/android/gms/ads/internal/util/zzax;->zzn(Landroid/content/Context;Ljava/lang/String;ZZ)V

    return-void
.end method
