.class final Lcom/google/android/gms/internal/ads/zzhil;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzhim;

.field final zzb:[J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzhil;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhim;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzhil;->zza:Lcom/google/android/gms/internal/ads/zzhim;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhim;-><init>(Lcom/google/android/gms/internal/ads/zzhim;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhil;->zza:Lcom/google/android/gms/internal/ads/zzhim;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhil;->zzb:[J

    const/16 v0, 0xa

    .line 3
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhil;->zzb:[J

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ads/zzhim;[J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhil;->zza:Lcom/google/android/gms/internal/ads/zzhim;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhil;->zzb:[J

    return-void
.end method
