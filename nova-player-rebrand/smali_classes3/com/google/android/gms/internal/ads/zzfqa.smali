.class final synthetic Lcom/google/android/gms/internal/ads/zzfqa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgyw;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzfqb;

.field private final synthetic zzb:I

.field private final synthetic zzc:J

.field private final synthetic zzd:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfqb;IJLjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfqa;->zza:Lcom/google/android/gms/internal/ads/zzfqb;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzfqa;->zzb:I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzfqa;->zzc:J

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfqa;->zzd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqa;->zza:Lcom/google/android/gms/internal/ads/zzfqb;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfqa;->zzb:I

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzfqa;->zzc:J

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfqa;->zzd:Ljava/lang/String;

    move-object v5, p1

    check-cast v5, Lcom/google/android/gms/ads/internal/util/client/zzt;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzfqb;->zzb(IJLjava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzt;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
