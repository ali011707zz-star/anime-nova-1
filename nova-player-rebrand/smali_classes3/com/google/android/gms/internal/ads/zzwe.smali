.class public final Lcom/google/android/gms/internal/ads/zzwe;
.super Lcom/google/android/gms/internal/ads/zzbf;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzak;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzak;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbf;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzb:Lcom/google/android/gms/internal/ads/zzak;

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public final zzb(ILcom/google/android/gms/internal/ads/zzbe;J)Lcom/google/android/gms/internal/ads/zzbe;
    .locals 21

    .line 1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbe;->zza:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzwe;->zzb:Lcom/google/android/gms/internal/ads/zzak;

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/4 v3, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v17, 0x0

    move-wide v6, v4

    move-wide v8, v4

    move-object/from16 v0, p2

    invoke-virtual/range {v0 .. v20}, Lcom/google/android/gms/internal/ads/zzbe;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzak;Ljava/lang/Object;JJJZZLcom/google/android/gms/internal/ads/zzaf;JJIIJ)Lcom/google/android/gms/internal/ads/zzbe;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbe;->zzk:Z

    return-object v0
.end method

.method public final zzc()I
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public final zzd(ILcom/google/android/gms/internal/ads/zzbd;Z)Lcom/google/android/gms/internal/ads/zzbd;
    .locals 11

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    if-eqz p3, :cond_1

    .line 2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzwd;->zzc:Ljava/lang/Object;

    :cond_1
    move-object v3, p1

    sget-object v9, Lcom/google/android/gms/internal/ads/zzc;->zza:Lcom/google/android/gms/internal/ads/zzc;

    const/4 v10, 0x1

    const/4 v4, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v7, 0x0

    move-object v1, p2

    .line 3
    invoke-virtual/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzbd;->zza(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/google/android/gms/internal/ads/zzc;Z)Lcom/google/android/gms/internal/ads/zzbd;

    return-object v1
.end method

.method public final zze(Ljava/lang/Object;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzwd;->zzc:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final zzf(I)Ljava/lang/Object;
    .locals 0

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzwd;->zzc:Ljava/lang/Object;

    return-object p1
.end method
