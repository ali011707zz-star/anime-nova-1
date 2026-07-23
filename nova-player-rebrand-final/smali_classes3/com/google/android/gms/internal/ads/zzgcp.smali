.class final Lcom/google/android/gms/internal/ads/zzgcp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field final zza:Ljava/lang/Runnable;

.field final zzb:J


# direct methods
.method constructor <init>(Ljava/lang/Runnable;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgcp;->zza:Ljava/lang/Runnable;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzgcp;->zzb:J

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgcp;

    .line 2
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzgcp;->zzb:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgcp;->zzb:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method
