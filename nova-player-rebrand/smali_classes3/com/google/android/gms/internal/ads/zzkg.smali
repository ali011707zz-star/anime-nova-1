.class final synthetic Lcom/google/android/gms/internal/ads/zzkg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdy;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzkg;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzkg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzkg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzkg;->zza:Lcom/google/android/gms/internal/ads/zzkg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaz;

    sget v0, Lcom/google/android/gms/internal/ads/zzks;->$r8$clinit:I

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzlg;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzlg;-><init>(I)V

    const/16 v1, 0x3eb

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zziw;->zzc(Ljava/lang/RuntimeException;I)Lcom/google/android/gms/internal/ads/zziw;

    move-result-object v0

    .line 1
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzaz;->zzm(Lcom/google/android/gms/internal/ads/zzau;)V

    return-void
.end method
