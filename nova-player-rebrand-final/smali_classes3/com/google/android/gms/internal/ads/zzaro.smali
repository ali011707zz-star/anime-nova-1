.class final Lcom/google/android/gms/internal/ads/zzaro;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzary;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzase;

.field private final zzc:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzary;Lcom/google/android/gms/internal/ads/zzase;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaro;->zza:Lcom/google/android/gms/internal/ads/zzary;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaro;->zzb:Lcom/google/android/gms/internal/ads/zzase;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaro;->zzc:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaro;->zza:Lcom/google/android/gms/internal/ads/zzary;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzary;->zzl()Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaro;->zzb:Lcom/google/android/gms/internal/ads/zzase;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzase;->zzc()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzase;->zza:Ljava/lang/Object;

    .line 2
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzary;->zzs(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzase;->zzc:Lcom/google/android/gms/internal/ads/zzash;

    .line 3
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzary;->zzt(Lcom/google/android/gms/internal/ads/zzash;)V

    .line 2
    :goto_0
    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzase;->zzd:Z

    if-eqz v1, :cond_1

    const-string v1, "intermediate-response"

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzary;->zzc(Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_1
    const-string v1, "done"

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzary;->zzd(Ljava/lang/String;)V

    .line 4
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaro;->zzc:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method
