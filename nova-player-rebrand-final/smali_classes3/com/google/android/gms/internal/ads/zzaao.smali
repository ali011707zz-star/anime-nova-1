.class final synthetic Lcom/google/android/gms/internal/ads/zzaao;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzaap;

.field private final synthetic zzb:I

.field private final synthetic zzc:J

.field private final synthetic zzd:J


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzaap;IJJ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaao;->zza:Lcom/google/android/gms/internal/ads/zzaap;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaao;->zzb:I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzaao;->zzc:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzaao;->zzd:J

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaao;->zza:Lcom/google/android/gms/internal/ads/zzaap;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaap;->zzc()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaao;->zzb:I

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzaao;->zzc:J

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzaao;->zzd:J

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzaar;->zzX(IJJ)V

    return-void
.end method
