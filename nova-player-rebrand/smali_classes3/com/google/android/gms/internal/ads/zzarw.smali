.class final Lcom/google/android/gms/internal/ads/zzarw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:J

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzary;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzary;Ljava/lang/String;J)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzarw;->zza:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzarw;->zzb:J

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzarw;->zzc:Lcom/google/android/gms/internal/ads/zzary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarw;->zzc:Lcom/google/android/gms/internal/ads/zzary;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzary;->zzx()Lcom/google/android/gms/internal/ads/zzasj;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzarw;->zza:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzarw;->zzb:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzasj;->zza(Ljava/lang/String;J)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzary;->zzx()Lcom/google/android/gms/internal/ads/zzasj;

    move-result-object v1

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzary;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzasj;->zzb(Ljava/lang/String;)V

    return-void
.end method
