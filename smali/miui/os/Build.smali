.class public Lmiui/os/Build;
.super Landroid/os/Build;
.source "Build.java"


# static fields
#the value of this static final field might be set in the static constructor
.field public static final IS_DEFY:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_DESIRE:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_DEVELOPMENT_VERSION:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_FAST_GPU_DEVICE:Z = false

.field public static final IS_FINAL_USER_BUILD:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_FULL_SOURCE_CODE_DEVICE:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_GALAXYS2:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_GALAXYS_NEXUS:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_HTC_HD2:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_I9000:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_LOW_MEMORY_DEVICE:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_MI1S:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_MILESTONE:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_MIONE:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_MIONE_CT_CUSTOMIZATION:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_MIONE_PLUS_CDMA:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_MITWO:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_NEED_UNCOMPRESSED_UCS2_SMS_DEVICE:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_NEXUS_7:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_NEXUS_ONE:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_NEXUS_S:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_P990:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_RICH_MEMORY_DEVICE:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_STABLE_VERSION:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_T959:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_U8860:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_U9200:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_XIAOMI:Z = false

.field private static final REGULAR_EXPRESSION_FOR_DEVELOPMENT:Ljava/lang/String; = "\\d+.\\d+.\\d+(.ALPHA)?"

.field public static final SHOW_MAGNIFIER_WHEN_INPUT:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 11
    const-string v0, "jordan"

    sget-object v3, Lmiui/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_DEFY:Z

    .line 12
    const-string v0, "bravo"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_DESIRE:Z

    .line 13
    const-string v0, "galaxys2"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_GALAXYS2:Z

    .line 14
    const-string v0, "htcleo"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "leo"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18b

    :cond_34
    move v0, v2

    :goto_35
    sput-boolean v0, Lmiui/os/Build;->IS_HTC_HD2:Z

    .line 15
    const-string v0, "aries"

    sget-object v3, Lmiui/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_I9000:Z

    .line 16
    const-string/jumbo v0, "umts_sholes"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_MILESTONE:Z

    .line 17
    const-string/jumbo v0, "mione"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    const-string/jumbo v0, "mione_plus"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18e

    :cond_62
    move v0, v2

    :goto_63
    sput-boolean v0, Lmiui/os/Build;->IS_MIONE:Z

    .line 18
    const-string v0, "aries"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_MITWO:Z

    .line 19
    sget-boolean v0, Lmiui/os/Build;->IS_MIONE:Z

    if-nez v0, :cond_77

    sget-boolean v0, Lmiui/os/Build;->IS_MITWO:Z

    if-eqz v0, :cond_191

    :cond_77
    move v0, v2

    :goto_78
    sput-boolean v0, Lmiui/os/Build;->IS_XIAOMI:Z

    .line 20
    const-string/jumbo v0, "passion"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_NEXUS_ONE:Z

    .line 21
    const-string v0, "crespo"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_NEXUS_S:Z

    .line 22
    const-string v0, "grouper"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_NEXUS_7:Z

    .line 23
    const-string/jumbo v0, "maguro"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_GALAXYS_NEXUS:Z

    .line 24
    const-string/jumbo v0, "p990"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_P990:Z

    .line 25
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v3, "vibrant"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_T959:Z

    .line 26
    const-string v0, "hwu8860"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_U8860:Z

    .line 27
    const-string v0, "hwu9200"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_U9200:Z

    .line 28
    const-string v0, "MI 1S"

    sget-object v3, Lmiui/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e2

    const-string v0, "MI 1SC"

    sget-object v3, Lmiui/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_194

    :cond_e2
    move v0, v2

    :goto_e3
    sput-boolean v0, Lmiui/os/Build;->IS_MI1S:Z

    .line 30
    sget-boolean v0, Lmiui/os/Build;->IS_MIONE:Z

    if-nez v0, :cond_ed

    sget-boolean v0, Lmiui/os/Build;->IS_GALAXYS2:Z

    if-eqz v0, :cond_197

    :cond_ed
    move v0, v2

    :goto_ee
    sput-boolean v0, Lmiui/os/Build;->IS_RICH_MEMORY_DEVICE:Z

    .line 31
    sget-boolean v0, Lmiui/os/Build;->IS_MILESTONE:Z

    sput-boolean v0, Lmiui/os/Build;->IS_LOW_MEMORY_DEVICE:Z

    .line 33
    sget-boolean v0, Lmiui/os/Build;->IS_MIONE:Z

    if-nez v0, :cond_108

    sget-boolean v0, Lmiui/os/Build;->IS_I9000:Z

    if-nez v0, :cond_108

    sget-boolean v0, Lmiui/os/Build;->IS_P990:Z

    if-nez v0, :cond_108

    sget-boolean v0, Lmiui/os/Build;->IS_NEXUS_S:Z

    if-nez v0, :cond_108

    sget-boolean v0, Lmiui/os/Build;->IS_GALAXYS2:Z

    if-eqz v0, :cond_19a

    :cond_108
    move v0, v2

    :goto_109
    sput-boolean v0, Lmiui/os/Build;->IS_FAST_GPU_DEVICE:Z

    .line 36
    sget-boolean v0, Lmiui/os/Build;->IS_MILESTONE:Z

    if-nez v0, :cond_123

    sget-boolean v0, Lmiui/os/Build;->IS_NEXUS_S:Z

    if-nez v0, :cond_123

    sget-boolean v0, Lmiui/os/Build;->IS_I9000:Z

    if-nez v0, :cond_123

    sget-boolean v0, Lmiui/os/Build;->IS_DEFY:Z

    if-nez v0, :cond_123

    sget-boolean v0, Lmiui/os/Build;->IS_GALAXYS2:Z

    if-nez v0, :cond_123

    sget-boolean v0, Lmiui/os/Build;->IS_P990:Z

    if-eqz v0, :cond_19d

    :cond_123
    move v0, v2

    :goto_124
    sput-boolean v0, Lmiui/os/Build;->IS_NEED_UNCOMPRESSED_UCS2_SMS_DEVICE:Z

    .line 39
    sget-boolean v0, Lmiui/os/Build;->IS_MIONE:Z

    if-eqz v0, :cond_19f

    invoke-static {}, Lmiui/os/Build;->isMsm8660()Z

    move-result v0

    if-eqz v0, :cond_19f

    move v0, v2

    :goto_131
    sput-boolean v0, Lmiui/os/Build;->IS_MIONE_PLUS_CDMA:Z

    .line 43
    const-string v0, "ct"

    const-string/jumbo v3, "ro.carrier.name"

    invoke-static {v3}, Lmiui/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_MIONE_CT_CUSTOMIZATION:Z

    .line 46
    sget-boolean v0, Lmiui/os/Build;->IS_XIAOMI:Z

    if-nez v0, :cond_14e

    sget-boolean v0, Lmiui/os/Build;->IS_GALAXYS_NEXUS:Z

    if-nez v0, :cond_14e

    sget-boolean v0, Lmiui/os/Build;->IS_NEXUS_S:Z

    if-eqz v0, :cond_1a1

    :cond_14e
    move v0, v2

    :goto_14f
    sput-boolean v0, Lmiui/os/Build;->SHOW_MAGNIFIER_WHEN_INPUT:Z

    .line 49
    sget-boolean v0, Lmiui/os/Build;->IS_XIAOMI:Z

    if-nez v0, :cond_161

    sget-boolean v0, Lmiui/os/Build;->IS_GALAXYS_NEXUS:Z

    if-nez v0, :cond_161

    sget-boolean v0, Lmiui/os/Build;->IS_NEXUS_S:Z

    if-nez v0, :cond_161

    sget-boolean v0, Lmiui/os/Build;->IS_NEXUS_7:Z

    if-eqz v0, :cond_1a3

    :cond_161
    move v0, v2

    :goto_162
    sput-boolean v0, Lmiui/os/Build;->IS_FULL_SOURCE_CODE_DEVICE:Z

    .line 54
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a5

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    const-string v3, "\\d+.\\d+.\\d+(.ALPHA)?"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a5

    move v0, v2

    :goto_177
    sput-boolean v0, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    .line 58
    const-string/jumbo v0, "user"

    sget-object v3, Lmiui/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a7

    sget-boolean v0, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    if-nez v0, :cond_1a7

    :goto_188
    sput-boolean v2, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    return-void

    :cond_18b
    move v0, v1

    .line 14
    goto/16 :goto_35

    :cond_18e
    move v0, v1

    .line 17
    goto/16 :goto_63

    :cond_191
    move v0, v1

    .line 19
    goto/16 :goto_78

    :cond_194
    move v0, v1

    .line 28
    goto/16 :goto_e3

    :cond_197
    move v0, v1

    .line 30
    goto/16 :goto_ee

    :cond_19a
    move v0, v1

    .line 33
    goto/16 :goto_109

    :cond_19d
    move v0, v1

    .line 36
    goto :goto_124

    :cond_19f
    move v0, v1

    .line 39
    goto :goto_131

    :cond_1a1
    move v0, v1

    .line 46
    goto :goto_14f

    :cond_1a3
    move v0, v1

    .line 49
    goto :goto_162

    :cond_1a5
    move v0, v1

    .line 54
    goto :goto_177

    :cond_1a7
    move v2, v1

    .line 58
    goto :goto_188
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/os/Build;-><init>()V

    return-void
.end method

.method private static getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "property"

    .prologue
    .line 94
    const-string/jumbo v0, "unknown"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isDevelopmentVersion()Z
    .registers 1

    .prologue
    .line 65
    sget-boolean v0, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    return v0
.end method

.method public static isMsm8660()Z
    .registers 2

    .prologue
    .line 80
    const-string/jumbo v1, "ro.soc.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, soc:Ljava/lang/String;
    const-string/jumbo v1, "msm8660"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string/jumbo v1, "unkown"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    :cond_19
    const/4 v1, 0x1

    :goto_1a
    return v1

    :cond_1b
    const/4 v1, 0x0

    goto :goto_1a
.end method

.method public static isOfficialVersion()Z
    .registers 1

    .prologue
    .line 76
    sget-boolean v0, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isStableVersion()Z
    .registers 1

    .prologue
    .line 72
    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    return v0
.end method
