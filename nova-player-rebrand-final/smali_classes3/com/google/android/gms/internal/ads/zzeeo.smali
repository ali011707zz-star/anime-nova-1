.class public final Lcom/google/android/gms/internal/ads/zzeeo;
.super Lcom/google/android/gms/internal/ads/zzbzk;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzeeq;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/zzeeq;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeeo;->zza:Lcom/google/android/gms/internal/ads/zzeeq;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbzk;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(Landroid/os/ParcelFileDescriptor;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzefg;

    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v1, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeeo;->zza:Lcom/google/android/gms/internal/ads/zzeeq;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzeeq;->zze:Lcom/google/android/gms/internal/ads/zzbzu;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzefg;-><init>(Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzbzu;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzeeq;->zza:Lcom/google/android/gms/internal/ads/zzcen;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcen;->zzc(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/ads/internal/util/zzba;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeeo;->zza:Lcom/google/android/gms/internal/ads/zzeeq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeeq;->zza:Lcom/google/android/gms/internal/ads/zzcen;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/util/zzba;->zzb()Lcom/google/android/gms/ads/internal/util/zzaz;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcen;->zzd(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final zzg(Landroid/os/ParcelFileDescriptor;Lcom/google/android/gms/internal/ads/zzbzu;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzefg;

    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v1, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzefg;-><init>(Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzbzu;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeeo;->zza:Lcom/google/android/gms/internal/ads/zzeeq;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzeeq;->zza:Lcom/google/android/gms/internal/ads/zzcen;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcen;->zzc(Ljava/lang/Object;)Z

    return-void
.end method
