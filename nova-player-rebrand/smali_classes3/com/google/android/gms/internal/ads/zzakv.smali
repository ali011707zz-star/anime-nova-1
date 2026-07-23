.class final Lcom/google/android/gms/internal/ads/zzakv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzalc;

.field public final zzb:Lcom/google/android/gms/internal/ads/zzalf;

.field public final zzc:Lcom/google/android/gms/internal/ads/zzagh;

.field public final zzd:Lcom/google/android/gms/internal/ads/zzagi;

.field public zze:I

.field public zzf:Lcom/google/android/gms/internal/ads/zzv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzalc;Lcom/google/android/gms/internal/ads/zzalf;Lcom/google/android/gms/internal/ads/zzagh;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakv;->zza:Lcom/google/android/gms/internal/ads/zzalc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzakv;->zzb:Lcom/google/android/gms/internal/ads/zzalf;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzakv;->zzc:Lcom/google/android/gms/internal/ads/zzagh;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzalc;->zzg:Lcom/google/android/gms/internal/ads/zzv;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    const-string p2, "audio/true-hd"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzagi;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzagi;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakv;->zzd:Lcom/google/android/gms/internal/ads/zzagi;

    return-void
.end method
