.class final synthetic Lcom/google/android/gms/internal/ads/zzehx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfmu;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzehy;

.field private final synthetic zzb:Z

.field private final synthetic zzc:Ljava/util/ArrayList;

.field private final synthetic zzd:Lcom/google/android/gms/internal/ads/zzbgj$zzab;

.field private final synthetic zze:Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zzd;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzehy;ZLjava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzbgj$zzab;Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zzd;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzehx;->zza:Lcom/google/android/gms/internal/ads/zzehy;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzehx;->zzb:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzehx;->zzc:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzehx;->zzd:Lcom/google/android/gms/internal/ads/zzbgj$zzab;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzehx;->zze:Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zzd;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehx;->zza:Lcom/google/android/gms/internal/ads/zzehy;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzehy;->zzb:Lcom/google/android/gms/internal/ads/zzehz;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeia;->zzf()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzehx;->zze:Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zzd;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzehx;->zzd:Lcom/google/android/gms/internal/ads/zzbgj$zzab;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzehx;->zzc:Ljava/util/ArrayList;

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzehx;->zzb:Z

    .line 2
    invoke-virtual {v0, v4, v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzehz;->zzc(ZLjava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzbgj$zzab;Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zzd;)[B

    move-result-object v1

    const/4 v2, 0x1

    .line 3
    invoke-static {p1, v4, v2}, Lcom/google/android/gms/internal/ads/zzeic;->zzf(Landroid/database/sqlite/SQLiteDatabase;ZZ)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzehz;->zzd()Lcom/google/android/gms/internal/ads/zzehr;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzehr;->zzb()J

    move-result-wide v2

    .line 5
    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzeic;->zze(Landroid/database/sqlite/SQLiteDatabase;J[B)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
