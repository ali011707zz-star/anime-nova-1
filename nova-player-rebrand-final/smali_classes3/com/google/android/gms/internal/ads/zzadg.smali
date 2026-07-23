.class final synthetic Lcom/google/android/gms/internal/ads/zzadg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzadl;

.field private final synthetic zzb:Ljava/lang/Object;

.field private final synthetic zzc:J


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzadl;Ljava/lang/Object;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzadg;->zza:Lcom/google/android/gms/internal/ads/zzadl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzadg;->zzb:Ljava/lang/Object;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzadg;->zzc:J

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadg;->zza:Lcom/google/android/gms/internal/ads/zzadl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzadg;->zzb:Ljava/lang/Object;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzadg;->zzc:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzadl;->zzq(Ljava/lang/Object;J)V

    return-void
.end method
