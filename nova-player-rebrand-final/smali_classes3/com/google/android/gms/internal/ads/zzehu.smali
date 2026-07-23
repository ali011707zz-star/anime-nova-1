.class final synthetic Lcom/google/android/gms/internal/ads/zzehu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfmu;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzehv;

.field private final synthetic zzb:J


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzehv;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzehu;->zza:Lcom/google/android/gms/internal/ads/zzehv;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzehu;->zzb:J

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehu;->zza:Lcom/google/android/gms/internal/ads/zzehv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeia;->zzf()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzehu;->zzb:J

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzz()Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza$zza;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza$zza;->zzad(J)Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza$zza;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzibl;->zzbm()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhzw;->zzaN()[B

    move-result-object v2

    const/4 v3, 0x0

    .line 4
    invoke-static {p1, v3, v3}, Lcom/google/android/gms/internal/ads/zzeic;->zzf(Landroid/database/sqlite/SQLiteDatabase;ZZ)V

    .line 5
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzeic;->zze(Landroid/database/sqlite/SQLiteDatabase;J[B)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
