.class final Lcom/google/android/gms/internal/ads/zzmi;
.super Lcom/google/android/gms/internal/ads/zzvy;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zzc:Lcom/google/android/gms/internal/ads/zzbe;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzmj;Lcom/google/android/gms/internal/ads/zzbf;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzvy;-><init>(Lcom/google/android/gms/internal/ads/zzbf;)V

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbe;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbe;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmi;->zzc:Lcom/google/android/gms/internal/ads/zzbe;

    return-void
.end method


# virtual methods
.method public final zzd(ILcom/google/android/gms/internal/ads/zzbd;Z)Lcom/google/android/gms/internal/ads/zzbd;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzb:Lcom/google/android/gms/internal/ads/zzbf;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbf;->zzd(ILcom/google/android/gms/internal/ads/zzbd;Z)Lcom/google/android/gms/internal/ads/zzbd;

    move-result-object v1

    .line 2
    iget p1, v1, Lcom/google/android/gms/internal/ads/zzbd;->zzc:I

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzmi;->zzc:Lcom/google/android/gms/internal/ads/zzbe;

    const-wide/16 v2, 0x0

    .line 3
    invoke-virtual {v0, p1, p3, v2, v3}, Lcom/google/android/gms/internal/ads/zzbf;->zzb(ILcom/google/android/gms/internal/ads/zzbe;J)Lcom/google/android/gms/internal/ads/zzbe;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbe;->zzb()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzbd;->zza:Ljava/lang/Object;

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/zzbd;->zzb:Ljava/lang/Object;

    iget v4, p2, Lcom/google/android/gms/internal/ads/zzbd;->zzc:I

    iget-wide v5, p2, Lcom/google/android/gms/internal/ads/zzbd;->zzd:J

    sget-object v9, Lcom/google/android/gms/internal/ads/zzc;->zza:Lcom/google/android/gms/internal/ads/zzc;

    const/4 v10, 0x1

    const-wide/16 v7, 0x0

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzbd;->zza(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/google/android/gms/internal/ads/zzc;Z)Lcom/google/android/gms/internal/ads/zzbd;

    return-object v1

    :cond_0
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, v1, Lcom/google/android/gms/internal/ads/zzbd;->zzf:Z

    return-object v1
.end method
