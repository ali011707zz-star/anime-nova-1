.class final Lcom/google/android/gms/internal/ads/zzcoo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzege;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzeek;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcnp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcnp;Lcom/google/android/gms/internal/ads/zzcom;Lcom/google/android/gms/internal/ads/zzeek;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoo;->zzb:Lcom/google/android/gms/internal/ads/zzcnp;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcoo;->zza:Lcom/google/android/gms/internal/ads/zzeek;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzeel;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoo;->zzb:Lcom/google/android/gms/internal/ads/zzcnp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcnp;->zzI()Lcom/google/android/gms/internal/ads/zzcmc;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcnp;->zzI()Lcom/google/android/gms/internal/ads/zzcmc;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcmj;->zzd(Lcom/google/android/gms/internal/ads/zzcmc;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcna;->zzd(Lcom/google/android/gms/internal/ads/zzcmc;)Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcoo;->zza:Lcom/google/android/gms/internal/ads/zzeek;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbyy;->zza()Lcom/google/android/gms/internal/ads/zzbyx;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzeem;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzeek;Lcom/google/android/gms/internal/ads/zzbyx;)Lcom/google/android/gms/internal/ads/zzeel;

    move-result-object v0

    return-object v0
.end method
