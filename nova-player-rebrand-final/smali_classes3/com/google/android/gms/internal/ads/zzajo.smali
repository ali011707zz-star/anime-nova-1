.class final synthetic Lcom/google/android/gms/internal/ads/zzajo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgrd;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzajo;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzajo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzajo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzajo;->zza:Lcom/google/android/gms/internal/ads/zzajo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzais;

    sget v0, Lcom/google/android/gms/internal/ads/zzajp;->$r8$clinit:I

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzain;->zzf:Ljava/lang/String;

    const-string v0, "TLEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
