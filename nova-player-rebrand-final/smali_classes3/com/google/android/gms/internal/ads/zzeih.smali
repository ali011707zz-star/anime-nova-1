.class final synthetic Lcom/google/android/gms/internal/ads/zzeih;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfmu;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzeii;

.field private final synthetic zzb:Z


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeii;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeih;->zza:Lcom/google/android/gms/internal/ads/zzeii;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzeih;->zzb:Z

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeih;->zza:Lcom/google/android/gms/internal/ads/zzeii;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzeih;->zzb:Z

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzeii;->zzb(ZLandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    const/4 p1, 0x0

    return-object p1
.end method
