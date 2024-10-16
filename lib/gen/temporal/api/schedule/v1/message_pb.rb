# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: temporal/api/schedule/v1/message.proto

require 'google/protobuf'

require 'google/protobuf/duration_pb'
require 'google/protobuf/timestamp_pb'
require 'dependencies/gogoproto/gogo_pb'
require 'temporal/api/common/v1/message_pb'
require 'temporal/api/enums/v1/schedule_pb'
require 'temporal/api/workflow/v1/message_pb'


descriptor_data = "\n&temporal/api/schedule/v1/message.proto\x12\x18temporal.api.schedule.v1\x1a\x1egoogle/protobuf/duration.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a!dependencies/gogoproto/gogo.proto\x1a$temporal/api/common/v1/message.proto\x1a$temporal/api/enums/v1/schedule.proto\x1a&temporal/api/workflow/v1/message.proto\"\x95\x01\n\x0c\x43\x61lendarSpec\x12\x0e\n\x06second\x18\x01 \x01(\t\x12\x0e\n\x06minute\x18\x02 \x01(\t\x12\x0c\n\x04hour\x18\x03 \x01(\t\x12\x14\n\x0c\x64\x61y_of_month\x18\x04 \x01(\t\x12\r\n\x05month\x18\x05 \x01(\t\x12\x0c\n\x04year\x18\x06 \x01(\t\x12\x13\n\x0b\x64\x61y_of_week\x18\x07 \x01(\t\x12\x0f\n\x07\x63omment\x18\x08 \x01(\t\"1\n\x05Range\x12\r\n\x05start\x18\x01 \x01(\x05\x12\x0b\n\x03\x65nd\x18\x02 \x01(\x05\x12\x0c\n\x04step\x18\x03 \x01(\x05\"\x86\x03\n\x16StructuredCalendarSpec\x12/\n\x06second\x18\x01 \x03(\x0b\x32\x1f.temporal.api.schedule.v1.Range\x12/\n\x06minute\x18\x02 \x03(\x0b\x32\x1f.temporal.api.schedule.v1.Range\x12-\n\x04hour\x18\x03 \x03(\x0b\x32\x1f.temporal.api.schedule.v1.Range\x12\x35\n\x0c\x64\x61y_of_month\x18\x04 \x03(\x0b\x32\x1f.temporal.api.schedule.v1.Range\x12.\n\x05month\x18\x05 \x03(\x0b\x32\x1f.temporal.api.schedule.v1.Range\x12-\n\x04year\x18\x06 \x03(\x0b\x32\x1f.temporal.api.schedule.v1.Range\x12\x34\n\x0b\x64\x61y_of_week\x18\x07 \x03(\x0b\x32\x1f.temporal.api.schedule.v1.Range\x12\x0f\n\x07\x63omment\x18\x08 \x01(\t\"q\n\x0cIntervalSpec\x12\x31\n\x08interval\x18\x01 \x01(\x0b\x32\x19.google.protobuf.DurationB\x04\x98\xdf\x1f\x01\x12.\n\x05phase\x18\x02 \x01(\x0b\x32\x19.google.protobuf.DurationB\x04\x98\xdf\x1f\x01\"\xcc\x04\n\x0cScheduleSpec\x12M\n\x13structured_calendar\x18\x07 \x03(\x0b\x32\x30.temporal.api.schedule.v1.StructuredCalendarSpec\x12\x13\n\x0b\x63ron_string\x18\x08 \x03(\t\x12\x38\n\x08\x63\x61lendar\x18\x01 \x03(\x0b\x32&.temporal.api.schedule.v1.CalendarSpec\x12\x38\n\x08interval\x18\x02 \x03(\x0b\x32&.temporal.api.schedule.v1.IntervalSpec\x12\x44\n\x10\x65xclude_calendar\x18\x03 \x03(\x0b\x32&.temporal.api.schedule.v1.CalendarSpecB\x02\x18\x01\x12U\n\x1b\x65xclude_structured_calendar\x18\t \x03(\x0b\x32\x30.temporal.api.schedule.v1.StructuredCalendarSpec\x12\x34\n\nstart_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x04\x90\xdf\x1f\x01\x12\x32\n\x08\x65nd_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x04\x90\xdf\x1f\x01\x12/\n\x06jitter\x18\x06 \x01(\x0b\x32\x19.google.protobuf.DurationB\x04\x98\xdf\x1f\x01\x12\x15\n\rtimezone_name\x18\n \x01(\t\x12\x15\n\rtimezone_data\x18\x0b \x01(\x0c\"\xab\x01\n\x10SchedulePolicies\x12\x44\n\x0eoverlap_policy\x18\x01 \x01(\x0e\x32,.temporal.api.enums.v1.ScheduleOverlapPolicy\x12\x37\n\x0e\x63\x61tchup_window\x18\x02 \x01(\x0b\x32\x19.google.protobuf.DurationB\x04\x98\xdf\x1f\x01\x12\x18\n\x10pause_on_failure\x18\x03 \x01(\x08\"h\n\x0eScheduleAction\x12L\n\x0estart_workflow\x18\x01 \x01(\x0b\x32\x32.temporal.api.workflow.v1.NewWorkflowExecutionInfoH\x00\x42\x08\n\x06\x61\x63tion\"\xd0\x01\n\x14ScheduleActionResult\x12\x37\n\rschedule_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x04\x90\xdf\x1f\x01\x12\x35\n\x0b\x61\x63tual_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x04\x90\xdf\x1f\x01\x12H\n\x15start_workflow_result\x18\x0b \x01(\x0b\x32).temporal.api.common.v1.WorkflowExecution\"b\n\rScheduleState\x12\r\n\x05notes\x18\x01 \x01(\t\x12\x0e\n\x06paused\x18\x02 \x01(\x08\x12\x17\n\x0flimited_actions\x18\x03 \x01(\x08\x12\x19\n\x11remaining_actions\x18\x04 \x01(\x03\"a\n\x19TriggerImmediatelyRequest\x12\x44\n\x0eoverlap_policy\x18\x01 \x01(\x0e\x32,.temporal.api.enums.v1.ScheduleOverlapPolicy\"\xc1\x01\n\x0f\x42\x61\x63kfillRequest\x12\x34\n\nstart_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x04\x90\xdf\x1f\x01\x12\x32\n\x08\x65nd_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x04\x90\xdf\x1f\x01\x12\x44\n\x0eoverlap_policy\x18\x03 \x01(\x0e\x32,.temporal.api.enums.v1.ScheduleOverlapPolicy\"\xc6\x01\n\rSchedulePatch\x12P\n\x13trigger_immediately\x18\x01 \x01(\x0b\x32\x33.temporal.api.schedule.v1.TriggerImmediatelyRequest\x12\x43\n\x10\x62\x61\x63kfill_request\x18\x02 \x03(\x0b\x32).temporal.api.schedule.v1.BackfillRequest\x12\r\n\x05pause\x18\x03 \x01(\t\x12\x0f\n\x07unpause\x18\x04 \x01(\t\"\xbb\x03\n\x0cScheduleInfo\x12\x14\n\x0c\x61\x63tion_count\x18\x01 \x01(\x03\x12\x1d\n\x15missed_catchup_window\x18\x02 \x01(\x03\x12\x17\n\x0foverlap_skipped\x18\x03 \x01(\x03\x12\x44\n\x11running_workflows\x18\t \x03(\x0b\x32).temporal.api.common.v1.WorkflowExecution\x12\x46\n\x0erecent_actions\x18\x04 \x03(\x0b\x32..temporal.api.schedule.v1.ScheduleActionResult\x12=\n\x13\x66uture_action_times\x18\x05 \x03(\x0b\x32\x1a.google.protobuf.TimestampB\x04\x90\xdf\x1f\x01\x12\x35\n\x0b\x63reate_time\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x04\x90\xdf\x1f\x01\x12\x35\n\x0bupdate_time\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x04\x90\xdf\x1f\x01\x12\"\n\x16invalid_schedule_error\x18\x08 \x01(\tB\x02\x18\x01\"\xf0\x01\n\x08Schedule\x12\x34\n\x04spec\x18\x01 \x01(\x0b\x32&.temporal.api.schedule.v1.ScheduleSpec\x12\x38\n\x06\x61\x63tion\x18\x02 \x01(\x0b\x32(.temporal.api.schedule.v1.ScheduleAction\x12<\n\x08policies\x18\x03 \x01(\x0b\x32*.temporal.api.schedule.v1.SchedulePolicies\x12\x36\n\x05state\x18\x04 \x01(\x0b\x32\'.temporal.api.schedule.v1.ScheduleState\"\xab\x02\n\x10ScheduleListInfo\x12\x34\n\x04spec\x18\x01 \x01(\x0b\x32&.temporal.api.schedule.v1.ScheduleSpec\x12;\n\rworkflow_type\x18\x02 \x01(\x0b\x32$.temporal.api.common.v1.WorkflowType\x12\r\n\x05notes\x18\x03 \x01(\t\x12\x0e\n\x06paused\x18\x04 \x01(\x08\x12\x46\n\x0erecent_actions\x18\x05 \x03(\x0b\x32..temporal.api.schedule.v1.ScheduleActionResult\x12=\n\x13\x66uture_action_times\x18\x06 \x03(\x0b\x32\x1a.google.protobuf.TimestampB\x04\x90\xdf\x1f\x01\"\xd3\x01\n\x11ScheduleListEntry\x12\x13\n\x0bschedule_id\x18\x01 \x01(\t\x12*\n\x04memo\x18\x02 \x01(\x0b\x32\x1c.temporal.api.common.v1.Memo\x12\x43\n\x11search_attributes\x18\x03 \x01(\x0b\x32(.temporal.api.common.v1.SearchAttributes\x12\x38\n\x04info\x18\x04 \x01(\x0b\x32*.temporal.api.schedule.v1.ScheduleListInfoB\x93\x01\n\x1bio.temporal.api.schedule.v1B\x0cMessageProtoP\x01Z\'go.temporal.io/api/schedule/v1;schedule\xaa\x02\x1aTemporalio.Api.Schedule.V1\xea\x02\x1dTemporalio::Api::Schedule::V1b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool
pool.add_serialized_file(descriptor_data)

module Temporalio
  module Api
    module Schedule
      module V1
        CalendarSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.api.schedule.v1.CalendarSpec").msgclass
        Range = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.api.schedule.v1.Range").msgclass
        StructuredCalendarSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.api.schedule.v1.StructuredCalendarSpec").msgclass
        IntervalSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.api.schedule.v1.IntervalSpec").msgclass
        ScheduleSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.api.schedule.v1.ScheduleSpec").msgclass
        SchedulePolicies = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.api.schedule.v1.SchedulePolicies").msgclass
        ScheduleAction = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.api.schedule.v1.ScheduleAction").msgclass
        ScheduleActionResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.api.schedule.v1.ScheduleActionResult").msgclass
        ScheduleState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.api.schedule.v1.ScheduleState").msgclass
        TriggerImmediatelyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.api.schedule.v1.TriggerImmediatelyRequest").msgclass
        BackfillRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.api.schedule.v1.BackfillRequest").msgclass
        SchedulePatch = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.api.schedule.v1.SchedulePatch").msgclass
        ScheduleInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.api.schedule.v1.ScheduleInfo").msgclass
        Schedule = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.api.schedule.v1.Schedule").msgclass
        ScheduleListInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.api.schedule.v1.ScheduleListInfo").msgclass
        ScheduleListEntry = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.api.schedule.v1.ScheduleListEntry").msgclass
      end
    end
  end
end
