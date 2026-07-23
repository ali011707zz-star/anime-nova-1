.class public final Lcom/google/android/gms/internal/consent_sdk/zzev;
.super Lcom/google/android/gms/internal/consent_sdk/zzqm;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/consent_sdk/zzrr;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/consent_sdk/zzev;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzev;

    invoke-direct {v0}, Lcom/google/android/gms/internal/consent_sdk/zzev;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/consent_sdk/zzev;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzev;

    const-class v1, Lcom/google/android/gms/internal/consent_sdk/zzev;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/consent_sdk/zzqm;->zzz(Ljava/lang/Class;Lcom/google/android/gms/internal/consent_sdk/zzqm;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/consent_sdk/zzqm;-><init>()V

    return-void
.end method

.method static bridge synthetic zza()Lcom/google/android/gms/internal/consent_sdk/zzev;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzev;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzev;

    return-object v0
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_4

    const/4 p2, 0x2

    const/4 p3, 0x0

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_0

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/consent_sdk/zzev;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzev;

    return-object p1

    .line 4
    :cond_0
    throw p3

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/consent_sdk/zzeu;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/consent_sdk/zzeu;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzez;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/consent_sdk/zzev;

    invoke-direct {p1}, Lcom/google/android/gms/internal/consent_sdk/zzev;-><init>()V

    return-object p1

    .line 1
    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/consent_sdk/zzev;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzev;

    const-string p2, "\u0004\u0000"

    .line 2
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/consent_sdk/zzqm;->zzw(Lcom/google/android/gms/internal/consent_sdk/zzrq;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
